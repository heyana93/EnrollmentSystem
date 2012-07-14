//Adapted from: http://msdn2.microsoft.com/en-us/library/6tc47t75(VS.80).aspx
using System;
using System.Configuration;
using System.Collections.Specialized;
using System.Configuration.Provider;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web.Configuration;
using System.Web.Security;

// This provider works with the following schema for the table of user data.
// 
//CREATE TABLE [dbo].[Users](
//	[UserID] [uniqueidentifier] NOT NULL,
//	[UserName] [nvarchar](255) NOT NULL,
//	[ApplicationName] [nvarchar](255) NOT NULL,
//	[Email] [nvarchar](128) NOT NULL,
//  [Role] [nvarchar](128) NOT NULL,
//	[Comment] [nvarchar](255) NULL,
//	[Password] [nvarchar](128) NOT NULL,
//	[PasswordQuestion] [nvarchar](255) NULL,
//	[PasswordAnswer] [nvarchar](255) NULL,
//	[IsApproved] [bit] NULL,
//	[LastActivityDate] [datetime] NULL,
//	[LastLoginDate] [datetime] NULL,
//	[LastPasswordChangedDate] [datetime] NULL,
//	[CreationDate] [datetime] NULL,
//	[IsOnLine] [bit] NULL,
//	[IsLockedOut] [bit] NULL,
//	[LastLockedOutDate] [datetime] NULL,
//	[FailedPasswordAttemptCount] [int] NULL,
//	[FailedPasswordAttemptWindowStart] [datetime] NULL,
//	[FailedPasswordAnswerAttemptCount] [int] NULL,
//	[FailedPasswordAnswerAttemptWindowStart] [datetime] NULL,
//PRIMARY KEY CLUSTERED 
//(
//	[UserID] ASC
//)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
//) ON [PRIMARY]
// 

// namespace: HDI.AspNet.Membership
//
// summary:	Namespace for user providers.

namespace HDI.AspNet.Membership
{
    /// <summary>   Hdi membership provider. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>

    public sealed class HDIMembershipProvider : MembershipProvider
    {

        #region Class Variables

        /// <summary> Length of the new password </summary>
        private int newPasswordLength = 8;

        /// <summary> The connection string </summary>
        private string connectionString;

        /// <summary> Name of the application </summary>
        private string applicationName;

        /// <summary> true to enable, false to disable the password reset </summary>
        private bool enablePasswordReset;

        /// <summary> true to enable, false to disable the password retrieval </summary>
        private bool enablePasswordRetrieval;

        /// <summary> true to requires question and answer </summary>
        private bool requiresQuestionAndAnswer;

        /// <summary> true to requires unique email </summary>
        private bool requiresUniqueEmail;

        /// <summary> The maximum invalid password attempts </summary>
        private int maxInvalidPasswordAttempts;

        /// <summary> The password attempt window </summary>
        private int passwordAttemptWindow;

        /// <summary> The password format </summary>
        private MembershipPasswordFormat passwordFormat;

        /// <summary> The minimum required non alphanumeric characters </summary>
        private int minRequiredNonAlphanumericCharacters;

        /// <summary> Length of the minimum required password </summary>
        private int minRequiredPasswordLength;

        /// <summary> The password strength regular expression </summary>
        private string passwordStrengthRegularExpression;

        /// <summary> The machine key </summary>
        private MachineKeySection machineKey; //Used when determining encryption key values.

        #endregion

        #region Enums

        /// <summary>   Values that represent FailureType. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>

        private enum FailureType
        {
            Password = 1,
            PasswordAnswer = 2
        }

        #endregion

        #region Properties

        /// <summary>   The name of the application using the custom membership provider. </summary>
        ///
        /// <value> The name of the application. </value>
        ///
        /// ### <returns>   The name of the application using the custom membership provider. </returns>

        public override string ApplicationName
        {
            get
            {
                return applicationName;
            }
            set
            {
                applicationName = value;
            }
        }

        /// <summary>   
        /// Indicates whether the membership provider is configured to allow users to reset their
        /// passwords. 
        /// </summary>
        ///
        /// <value> true if enable password reset, false if not. </value>
        ///
        /// ### <returns>   
        /// true if the membership provider supports password reset; otherwise, false. The default is
        /// true. 
        /// </returns>

        public override bool EnablePasswordReset
        {
            get
            {
                return enablePasswordReset;
            }
        }

        /// <summary>   
        /// Indicates whether the membership provider is configured to allow users to retrieve their
        /// passwords. 
        /// </summary>
        ///
        /// <value> true if enable password retrieval, false if not. </value>
        ///
        /// ### <returns>   
        /// true if the membership provider is configured to support password retrieval; otherwise,
        /// false. The default is false. 
        /// </returns>

        public override bool EnablePasswordRetrieval
        {
            get
            {
                return enablePasswordRetrieval;
            }
        }

        /// <summary>   
        /// Gets a value indicating whether the membership provider is configured to require the user to
        /// answer a password question for password reset and retrieval. 
        /// </summary>
        ///
        /// <value> true if requires question and answer, false if not. </value>
        ///
        /// ### <returns>   
        /// true if a password answer is required for password reset and retrieval; otherwise, false. The
        /// default is true. 
        /// </returns>

        public override bool RequiresQuestionAndAnswer
        {
            get
            {
                return requiresQuestionAndAnswer;
            }
        }

        /// <summary>   
        /// Gets a value indicating whether the membership provider is configured to require a unique e-
        /// mail address for each user name. 
        /// </summary>
        ///
        /// <value> true if requires unique email, false if not. </value>
        ///
        /// ### <returns>   
        /// true if the membership provider requires a unique e-mail address; otherwise, false. The
        /// default is true. 
        /// </returns>

        public override bool RequiresUniqueEmail
        {
            get
            {
                return requiresUniqueEmail;
            }
        }

        /// <summary>   
        /// Gets the number of invalid password or password-answer attempts allowed before the membership
        /// user is locked out. 
        /// </summary>
        ///
        /// <value> The maximum invalid password attempts. </value>
        ///
        /// ### <returns>   
        /// The number of invalid password or password-answer attempts allowed before the membership user
        /// is locked out. 
        /// </returns>

        public override int MaxInvalidPasswordAttempts
        {
            get
            {
                return maxInvalidPasswordAttempts;
            }
        }

        /// <summary>   
        /// Gets the number of minutes in which a maximum number of invalid password or password-answer
        /// attempts are allowed before the membership user is locked out. 
        /// </summary>
        ///
        /// <value> The password attempt window. </value>
        ///
        /// ### <returns>   
        /// The number of minutes in which a maximum number of invalid password or password-answer
        /// attempts are allowed before the membership user is locked out. 
        /// </returns>

        public override int PasswordAttemptWindow
        {
            get
            {
                return passwordAttemptWindow;
            }
        }

        /// <summary>   
        /// Gets a value indicating the format for storing passwords in the membership data store. 
        /// </summary>
        ///
        /// <value> The password format. </value>
        ///
        /// ### <returns>   
        /// One of the <see cref="T:System.Web.Security.MembershipPasswordFormat" /> values indicating
        /// the format for storing passwords in the data store. 
        /// </returns>

        public override MembershipPasswordFormat PasswordFormat
        {
            get
            {
                return passwordFormat;
            }
        }

        /// <summary>   
        /// Gets the minimum number of special characters that must be present in a valid password. 
        /// </summary>
        ///
        /// <value> The minimum required non alphanumeric characters. </value>
        ///
        /// ### <returns>   
        /// The minimum number of special characters that must be present in a valid password. 
        /// </returns>

        public override int MinRequiredNonAlphanumericCharacters
        {
            get
            {
                return minRequiredNonAlphanumericCharacters;
            }
        }

        /// <summary>   Gets the minimum length required for a password. </summary>
        ///
        /// <value> The length of the minimum required password. </value>
        ///
        /// ### <returns>   The minimum length required for a password. </returns>

        public override int MinRequiredPasswordLength
        {
            get
            {
                return minRequiredPasswordLength;
            }
        }

        /// <summary>   Gets the regular expression used to evaluate a password. </summary>
        ///
        /// <value> The password strength regular expression. </value>
        ///
        /// ### <returns>   A regular expression used to evaluate a password. </returns>

        public override string PasswordStrengthRegularExpression
        {
            get
            {
                return passwordStrengthRegularExpression;
            }
        }

        #endregion

        #region Initialization

        /// <summary>   Initializes this object. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="ArgumentNullException">    Thrown when one or more required arguments are
        ///                                             null. </exception>
        /// <exception cref="ProviderException">        Thrown when provider. </exception>
        ///
        /// <param name="name">     The name. </param>
        /// <param name="config">   The configuration. </param>

        public override void Initialize(string name, NameValueCollection config)
        {
            if (config == null)
            {
                throw new ArgumentNullException("config");
            }

            if (name == null || name.Length == 0)
            {
                name = "HDIMembershipProvider";
            }

            if (String.IsNullOrEmpty(config["description"]))
            {
                config.Remove("description");
                config.Add("description", "Membership provider");
            }

            //Initialize the abstract base class.
            base.Initialize(name, config);

            applicationName = GetConfigValue(config["applicationName"], System.Web.Hosting.HostingEnvironment.ApplicationVirtualPath);
            maxInvalidPasswordAttempts = Convert.ToInt32(GetConfigValue(config["maxInvalidPasswordAttempts"], "5"));
            passwordAttemptWindow = Convert.ToInt32(GetConfigValue(config["passwordAttemptWindow"], "10"));
            minRequiredNonAlphanumericCharacters = Convert.ToInt32(GetConfigValue(config["minRequiredAlphaNumericCharacters"], "1"));
            minRequiredPasswordLength = Convert.ToInt32(GetConfigValue(config["minRequiredPasswordLength"], "7"));
            passwordStrengthRegularExpression = Convert.ToString(GetConfigValue(config["passwordStrengthRegularExpression"], String.Empty));
            enablePasswordReset = Convert.ToBoolean(GetConfigValue(config["enablePasswordReset"], "true"));
            enablePasswordRetrieval = Convert.ToBoolean(GetConfigValue(config["enablePasswordRetrieval"], "true"));
            requiresQuestionAndAnswer = Convert.ToBoolean(GetConfigValue(config["requiresQuestionAndAnswer"], "false"));
            requiresUniqueEmail = Convert.ToBoolean(GetConfigValue(config["requiresUniqueEmail"], "true"));

            string temp_format = config["passwordFormat"];
            if (temp_format == null)
            {
                temp_format = "Hashed";
            }

            switch (temp_format)
            {
                case "Hashed":
                    passwordFormat = MembershipPasswordFormat.Hashed;
                    break;
                case "Encrypted":
                    passwordFormat = MembershipPasswordFormat.Encrypted;
                    break;
                case "Clear":
                    passwordFormat = MembershipPasswordFormat.Clear;
                    break;
                default:
                    throw new ProviderException("Password format not supported.");
            }

            ConnectionStringSettings ConnectionStringSettings = ConfigurationManager.ConnectionStrings[config["connectionStringName"]];

            if ((ConnectionStringSettings == null) || (ConnectionStringSettings.ConnectionString.Trim() == String.Empty))
            {
                throw new ProviderException("Connection string cannot be blank.");
            }

            connectionString = ConnectionStringSettings.ConnectionString;

            //Get encryption and decryption key information from the configuration.
            System.Configuration.Configuration cfg = WebConfigurationManager.OpenWebConfiguration(System.Web.Hosting.HostingEnvironment.ApplicationVirtualPath);
            machineKey = cfg.GetSection("system.web/machineKey") as MachineKeySection;

            if (machineKey.ValidationKey.Contains("AutoGenerate"))
            {
                if (PasswordFormat != MembershipPasswordFormat.Clear)
                {
                    throw new ProviderException("Hashed or Encrypted passwords are not supported with auto-generated keys.");
                }
            }
        }

        /// <summary>   Gets a configuration value. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="configValue">  The configuration value. </param>
        /// <param name="defaultValue"> The default value. </param>
        ///
        /// <returns>   The configuration value. </returns>

        private string GetConfigValue(string configValue, string defaultValue)
        {
            if (String.IsNullOrEmpty(configValue))
            {
                return defaultValue;
            }

            return configValue;
        }

        #endregion

        #region Implemented Abstract Methods from MembershipProvider

        /// <summary>   Processes a request to update the password for a membership user. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="FailureInformation">   Thrown when failure information. </exception>
        /// <exception cref="Exception">            Thrown when exception. </exception>
        ///
        /// <param name="username"> The user to update the password for. </param>
        /// <param name="oldPwd">   The old password. </param>
        /// <param name="newPwd">   The new password. </param>
        ///
        /// <returns>   true if the password was updated successfully; otherwise, false. </returns>
        ///
        /// ### <param name="oldPassword">  The current password for the specified user. </param>
        /// ### <param name="newPassword">  The new password for the specified user. </param>

        public override bool ChangePassword(string username, string oldPwd, string newPwd)
        {

            if (!ValidateUser(username, oldPwd))
            {
                return false;
            }

            ValidatePasswordEventArgs args = new ValidatePasswordEventArgs(username, newPwd, true);

            OnValidatingPassword(args);

            if (args.Cancel)
            {
                if (args.FailureInformation != null)
                {
                    throw args.FailureInformation;
                }
                else
                {
                    throw new Exception("Change password canceled due to new password validation failure.");
                }
            }

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("User_ChangePassword", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@password", SqlDbType.NVarChar, 255).Value = EncodePassword(newPwd);
            sqlCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            try
            {
                sqlConnection.Open();
                sqlCommand.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                //Add exception handling here.
                return false;
            }
            finally
            {
                sqlConnection.Close();
            }

            return true;

        }

        /// <summary>   
        /// Processes a request to update the password question and answer for a membership user. 
        /// </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username">         The user to change the password question and answer for. </param>
        /// <param name="password">         The password for the specified user. </param>
        /// <param name="newPwdQuestion">   The new password question. </param>
        /// <param name="newPwdAnswer">     The new password answer. </param>
        ///
        /// <returns>   
        /// true if the password question and answer are updated successfully; otherwise, false. 
        /// </returns>
        ///
        /// ### <param name="newPasswordQuestion">  The new password question for the specified user. </param>
        /// ### <param name="newPasswordAnswer">    The new password answer for the specified user. </param>

        public override bool ChangePasswordQuestionAndAnswer(
        string username,
          string password,
         string newPwdQuestion,
          string newPwdAnswer)
        {

            if (!ValidateUser(username, password))
            {
                return false;
            }

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("User_ChangePasswordQuestionAnswer", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@returnValue", SqlDbType.Int, 0).Direction = ParameterDirection.ReturnValue;
            sqlCommand.Parameters.Add("@question", SqlDbType.NVarChar, 255).Value = newPwdQuestion;
            sqlCommand.Parameters.Add("@answer", SqlDbType.NVarChar, 255).Value = EncodePassword(newPwdAnswer);
            sqlCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username; ;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            try
            {
                sqlConnection.Open();
                sqlCommand.ExecuteNonQuery();
                if ((int)sqlCommand.Parameters["@returnValue"].Value != 0)
                {
                    return false;
                }
            }
            catch (SqlException e)
            {
                //Add exception handling here.
                return false;
            }
            finally
            {
                sqlConnection.Close();
            }

            return true;

        }

        /// <summary>   Adds a new membership user to the data source. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username">         The user name for the new user. </param>
        /// <param name="password">         The password for the new user. </param>
        /// <param name="email">            The e-mail address for the new user. </param>
        /// <param name="passwordQuestion"> The password question for the new user. </param>
        /// <param name="passwordAnswer">   The password answer for the new user. </param>
        /// <param name="isApproved">       Whether or not the new user is approved to be validated. </param>
        /// <param name="providerUserKey">  The unique identifier from the membership data source for the
        ///                                 user. </param>
        /// <param name="status">           [out] A <see cref="T:
        ///                                 System.Web.Security.MembershipCreateStatus" /> enumeration
        ///                                 value indicating whether the user was created successfully. </param>
        ///
        /// <returns>   
        /// A <see cref="T:System.Web.Security.MembershipUser" /> object populated with the information
        /// for the newly created user. 
        /// </returns>

        public override MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status)
        {

            ValidatePasswordEventArgs args = new ValidatePasswordEventArgs(username, password, true);

            OnValidatingPassword(args);

            if (args.Cancel)
            {
                status = MembershipCreateStatus.InvalidPassword;
                return null;
            }

            if ((RequiresUniqueEmail && (GetUserNameByEmail(email) != String.Empty)))
            {
                status = MembershipCreateStatus.DuplicateEmail;
                return null;
            }

            MembershipUser membershipUser = GetUser(username, false);

            if (membershipUser == null)
            {
                System.DateTime createDate = DateTime.Now;

                SqlConnection sqlConnection = new SqlConnection(connectionString);
                SqlCommand sqlCommand = new SqlCommand("User_Ins", sqlConnection);

                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.Add("@returnValue", SqlDbType.Int, 0).Direction = ParameterDirection.ReturnValue;
                sqlCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username; ;
                sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;
                sqlCommand.Parameters.Add("@password", SqlDbType.NVarChar, 255).Value = EncodePassword(password);
                sqlCommand.Parameters.Add("@email", SqlDbType.NVarChar, 128).Value = email;
                if (passwordQuestion == null)
                {
                    sqlCommand.Parameters.Add("@passwordQuestion", SqlDbType.NVarChar, 255).Value = String.Empty;
                    sqlCommand.Parameters.Add("@passwordAnswer", SqlDbType.NVarChar, 255).Value = String.Empty;
                }
                else
                {
                    sqlCommand.Parameters.Add("@passwordQuestion", SqlDbType.NVarChar, 255).Value = passwordQuestion;
                    sqlCommand.Parameters.Add("@passwordAnswer", SqlDbType.NVarChar, 255).Value = EncodePassword(passwordAnswer);
                }
                sqlCommand.Parameters.Add("@isApproved", SqlDbType.Bit).Value = isApproved;
                sqlCommand.Parameters.Add("@comment", SqlDbType.NVarChar, 255).Value = String.Empty;

                try
                {
                    sqlConnection.Open();

                    sqlCommand.ExecuteNonQuery();
                    if ((int)sqlCommand.Parameters["@returnValue"].Value == 0)
                    {

                        status = MembershipCreateStatus.Success;
                    }
                    else
                    {
                        status = MembershipCreateStatus.UserRejected;
                    }
                }
                catch (SqlException e)
                {
                    //Add exception handling here.
                    status = MembershipCreateStatus.ProviderError;
                }
                finally
                {
                    sqlConnection.Close();
                }

                return GetUser(username, false);
            }
            else
            {
                status = MembershipCreateStatus.DuplicateUserName;
            }

            return null;
        }

        /// <summary>   Removes a user from the membership data source. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username">             The name of the user to delete. </param>
        /// <param name="deleteAllRelatedData"> true to delete data related to the user from the database;
        ///                                     false to leave data related to the user in the database. </param>
        ///
        /// <returns>   true if the user was successfully deleted; otherwise, false. </returns>

        public override bool DeleteUser(
         string username,
         bool deleteAllRelatedData
        )
        {

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("User_Del", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@returnValue", SqlDbType.Int, 0).Direction = ParameterDirection.ReturnValue;
            sqlCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username; ;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            try
            {
                sqlConnection.Open();
                sqlCommand.ExecuteNonQuery();
                if ((int)sqlCommand.Parameters["@returnValue"].Value == 0)
                {
                    if (deleteAllRelatedData)
                    {
                        //Process commands to delete all data for the user in the database.
                    }
                }
                else
                {
                    return false;
                }
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                sqlConnection.Close();
            }

            return true;

        }

        /// <summary>   Get a collection of users. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="pageIndex">    Page index. </param>
        /// <param name="pageSize">     Page size. </param>
        /// <param name="totalRecords"> [out] Total # of records to retrieve. </param>
        ///
        /// <returns>   Collection of MembershipUser objects. </returns>

        public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
        {

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("Users_Sel", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            MembershipUserCollection users = new MembershipUserCollection();

            SqlDataReader sqlDataReader = null;
            totalRecords = 0;

            try
            {
                sqlConnection.Open();
                sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

                int counter = 0;
                int startIndex = pageSize * pageIndex;
                int endIndex = startIndex + pageSize - 1;

                while (sqlDataReader.Read())
                {
                    if (counter >= startIndex)
                    {
                        users.Add(GetUserFromReader(sqlDataReader));
                    }

                    if (counter >= endIndex) { sqlCommand.Cancel(); }
                    counter += 1;
                }
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                if (sqlDataReader != null)
                {
                    sqlDataReader.Close();
                }
            }

            return users;

        }

        /// <summary>   Gets the number of users currently on-line. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <returns>   # of users on-line. </returns>

        public override int GetNumberOfUsersOnline()
        {

            TimeSpan onlineSpan = new TimeSpan(0, System.Web.Security.Membership.UserIsOnlineTimeWindow, 0);
            DateTime compareTime = DateTime.Now.Subtract(onlineSpan);

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("Users_NumberOnline", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;
            sqlCommand.Parameters.Add("@compareDate", SqlDbType.DateTime).Value = compareTime;

            int numOnline = 0;

            try
            {
                sqlConnection.Open();

                numOnline = Convert.ToInt32(sqlCommand.ExecuteScalar());
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                sqlConnection.Close();
            }

            return numOnline;

        }

        /// <summary>   Get the password for a user. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="ProviderException">            Thrown when provider. </exception>
        /// <exception cref="MembershipPasswordException">  Thrown when membershippassword. </exception>
        ///
        /// <param name="username"> User name. </param>
        /// <param name="answer">   Answer to security question. </param>
        ///
        /// <returns>   Password for the user. </returns>

        public override string GetPassword(
         string username,
         string answer
        )
        {

            if (!EnablePasswordRetrieval)
            {
                throw new ProviderException("Password Retrieval Not Enabled.");
            }

            if (PasswordFormat == MembershipPasswordFormat.Hashed)
            {
                throw new ProviderException("Cannot retrieve Hashed passwords.");
            }

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("User_GetPassword", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            string password = String.Empty;
            string passwordAnswer = String.Empty;
            SqlDataReader sqlDataReader = null;

            try
            {
                sqlConnection.Open();

                sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.SingleRow & CommandBehavior.CloseConnection);

                if (sqlDataReader.HasRows)
                {
                    sqlDataReader.Read();

                    if (sqlDataReader.GetBoolean(2))
                    {
                        throw new MembershipPasswordException("The supplied user is locked out.");
                    }

                    password = sqlDataReader.GetString(0);
                    passwordAnswer = sqlDataReader.GetString(1);
                }
                else
                {
                    throw new MembershipPasswordException("The supplied user name is not found.");
                }
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                if (sqlDataReader != null) { sqlDataReader.Close(); }
            }

            if (RequiresQuestionAndAnswer && !CheckPassword(answer, passwordAnswer))
            {
                UpdateFailureCount(username, FailureType.PasswordAnswer);

                throw new MembershipPasswordException("Incorrect password answer.");
            }

            if (PasswordFormat == MembershipPasswordFormat.Encrypted)
            {
                password = UnEncodePassword(password);
            }

            return password;
        }

        /// <summary>   Get a user based upon provider key and if they are on-line. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username">     User name. </param>
        /// <param name="userIsOnline"> T/F whether the user is on-line. </param>
        ///
        /// <returns>   The user. </returns>

        public override MembershipUser GetUser(
        string username,
         bool userIsOnline
        )
        {

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("User_Sel", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            MembershipUser membershipUser = null;
            SqlDataReader sqlDataReader = null;

            try
            {
                sqlConnection.Open();

                sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

                if (sqlDataReader.HasRows)
                {
                    sqlDataReader.Read();
                    membershipUser = GetUserFromReader(sqlDataReader);

                    if (userIsOnline)
                    {
                        SqlCommand sqlUpdateCommand = new SqlCommand("User_UpdateActivityDate_ByUserName", sqlConnection);

                        sqlUpdateCommand.CommandType = CommandType.StoredProcedure;
                        sqlUpdateCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username;
                        sqlUpdateCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;
                        sqlUpdateCommand.ExecuteNonQuery();
                    }
                }
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                if (sqlDataReader != null) { sqlDataReader.Close(); }
            }

            return membershipUser;
        }

        /// <summary>   Get a user based upon provider key and if they are on-line. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="userID">       Provider key. </param>
        /// <param name="userIsOnline"> T/F whether the user is on-line. </param>
        ///
        /// <returns>   The user. </returns>

        public override MembershipUser GetUser(
         object userID,
         bool userIsOnline
        )
        {

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("User_Sel_ByUserID", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@userID", SqlDbType.UniqueIdentifier).Value = userID;

            MembershipUser membershipUser = null;
            SqlDataReader sqlDataReader = null;

            try
            {
                sqlConnection.Open();

                sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

                if (sqlDataReader.HasRows)
                {
                    sqlDataReader.Read();
                    membershipUser = GetUserFromReader(sqlDataReader);

                    if (userIsOnline)
                    {
                        SqlCommand sqlUpdateCommand = new SqlCommand("User_UpdateActivityDate_ByUserID", sqlConnection);

                        sqlUpdateCommand.CommandType = CommandType.StoredProcedure;
                        sqlUpdateCommand.Parameters.Add("@userID", SqlDbType.NVarChar, 255).Value = userID;
                        sqlUpdateCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;
                        sqlUpdateCommand.ExecuteNonQuery();
                    }
                }
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                if (sqlDataReader != null) { sqlDataReader.Close(); }
            }

            return membershipUser;

        }

        /// <summary>   Unlock a user. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username"> User name. </param>
        ///
        /// <returns>   T/F if unlocked. </returns>

        public override bool UnlockUser(
         string username
        )
        {

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("User_Unlock", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@returnValue", SqlDbType.Int, 0).Direction = ParameterDirection.ReturnValue;
            sqlCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            int rowsAffected = 0;

            try
            {
                sqlConnection.Open();

                sqlCommand.ExecuteNonQuery();
                if ((int)sqlCommand.Parameters["@returnValue"].Value == 0)
                {
                    return false;
                }
            }
            catch (SqlException e)
            {
                //Add exception handling here.
                return false;
            }
            finally
            {
                sqlConnection.Close();
            }

            return true;

        }

        /// <summary>   Gets a user name by email. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="email">    The email. </param>
        ///
        /// <returns>   The user name by email. </returns>

        public override string GetUserNameByEmail(string email)
        {
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("UserName_Sel_ByEmail", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@email", SqlDbType.NVarChar, 128).Value = email;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            string username = String.Empty;

            try
            {
                sqlConnection.Open();
                username = Convert.ToString(sqlCommand.ExecuteScalar());
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                sqlConnection.Close();
            }

            if (username == null)
            {
                return String.Empty;
            }
            else
            {
                username.Trim();
            }

            return username;

        }

        /// <summary>   Reset the user password. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="NotSupportedException">        Thrown when the requested operation is not
        ///                                                 supported. </exception>
        /// <exception cref="ProviderException">            Thrown when provider. </exception>
        /// <exception cref="FailureInformation">           Thrown when failure information. </exception>
        /// <exception cref="MembershipPasswordException">  Thrown when membershippassword. </exception>
        ///
        /// <param name="username"> User name. </param>
        /// <param name="answer">   Answer to security question. </param>
        ///
        /// <returns>   . </returns>

        public override string ResetPassword(
         string username,
         string answer
        )
        {

            if (!EnablePasswordReset)
            {
                throw new NotSupportedException("Password Reset is not enabled.");
            }

            if ((answer == null) && (RequiresQuestionAndAnswer))
            {
                UpdateFailureCount(username, FailureType.PasswordAnswer);

                throw new ProviderException("Password answer required for password Reset.");
            }

            string newPassword =
              System.Web.Security.Membership.GeneratePassword(
              newPasswordLength,
              MinRequiredNonAlphanumericCharacters
              );

            ValidatePasswordEventArgs args = new ValidatePasswordEventArgs(username, newPassword, true);

            OnValidatingPassword(args);

            if (args.Cancel)
            {
                if (args.FailureInformation != null)
                {
                    throw args.FailureInformation;
                }
                else
                {
                    throw new MembershipPasswordException("Reset password canceled due to password validation failure.");
                }
            }

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("User_GetPasswordAnswer", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            int rowsAffected = 0;
            string passwordAnswer = String.Empty;
            SqlDataReader sqlDataReader = null;

            try
            {
                sqlConnection.Open();

                sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.SingleRow & CommandBehavior.CloseConnection);

                if (sqlDataReader.HasRows)
                {
                    sqlDataReader.Read();

                    if (sqlDataReader.GetBoolean(1))
                    {
                        throw new MembershipPasswordException("The supplied user is locked out.");
                    }

                    passwordAnswer = sqlDataReader.GetString(0);
                }
                else
                {
                    throw new MembershipPasswordException("The supplied user name is not found.");
                }

                if (RequiresQuestionAndAnswer && (!CheckPassword(answer, passwordAnswer)))
                {
                    UpdateFailureCount(username, FailureType.PasswordAnswer);

                    throw new MembershipPasswordException("Incorrect password answer.");
                }

                SqlCommand sqlUpdateCommand = new SqlCommand("User_UpdatePassword", sqlConnection);

                sqlUpdateCommand.CommandType = CommandType.StoredProcedure;
                sqlUpdateCommand.Parameters.Add("@password", SqlDbType.NVarChar, 255).Value = EncodePassword(newPassword);
                sqlUpdateCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username;
                sqlUpdateCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;
                rowsAffected = sqlUpdateCommand.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                if (sqlDataReader != null) { sqlDataReader.Close(); }
            }

            if (rowsAffected > 0)
            {
                return newPassword;
            }
            else
            {
                throw new MembershipPasswordException("User not found, or user is locked out. Password not Reset.");
            }
        }

        /// <summary>   Update the user information. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="membershipUser">   MembershipUser object containing data. </param>

        public override void UpdateUser(MembershipUser membershipUser)
        {

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("User_Upd", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@email", SqlDbType.NVarChar, 128).Value = membershipUser.Email;
            sqlCommand.Parameters.Add("@comment", SqlDbType.NVarChar, 255).Value = membershipUser.Comment;
            sqlCommand.Parameters.Add("@isApproved", SqlDbType.Bit).Value = membershipUser.IsApproved;
            sqlCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = membershipUser.UserName;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            try
            {
                sqlConnection.Open();
                sqlCommand.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                sqlConnection.Close();
            }
        }

        /// <summary>   Validate the user based upon username and password. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username"> User name. </param>
        /// <param name="password"> Password. </param>
        ///
        /// <returns>   T/F if the user is valid. </returns>

        public override bool ValidateUser(
         string username,
         string password
        )
        {

            bool isValid = false;

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("User_Validate", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            SqlDataReader sqlDataReader = null;
            bool isApproved = false;
            string storedPassword = String.Empty;

            try
            {
                sqlConnection.Open();
                sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.SingleRow);

                if (sqlDataReader.HasRows)
                {
                    sqlDataReader.Read();
                    storedPassword = sqlDataReader.GetString(0);
                    isApproved = sqlDataReader.GetBoolean(1);
                }
                else
                {
                    return false;
                }

                sqlDataReader.Close();

                if (CheckPassword(password, storedPassword))
                {
                    if (isApproved)
                    {
                        isValid = true;

                        SqlCommand sqlUpdateCommand = new SqlCommand("User_UpdateLoginDate", sqlConnection);

                        sqlUpdateCommand.CommandType = CommandType.StoredProcedure;
                        sqlUpdateCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = username;
                        sqlUpdateCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;
                        sqlUpdateCommand.ExecuteNonQuery();
                    }
                }
                else
                {
                    sqlConnection.Close();
                    UpdateFailureCount(username, FailureType.Password);
                }
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                if (sqlDataReader != null) { sqlDataReader.Close(); }
                if ((sqlConnection != null) && (sqlConnection.State == ConnectionState.Open)) { sqlConnection.Close(); }
            }

            return isValid;
        }

        /// <summary>   Find all users matching a search string. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="usernameToMatch">  Search string of user name to match. </param>
        /// <param name="pageIndex">        . </param>
        /// <param name="pageSize">         . </param>
        /// <param name="totalRecords">     [out] Total records found. </param>
        ///
        /// <returns>   Collection of MembershipUser objects. </returns>

        public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("Users_Sel_ByUserName", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@username", SqlDbType.NVarChar, 255).Value = usernameToMatch;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            MembershipUserCollection membershipUsers = new MembershipUserCollection();
            SqlDataReader sqlDataReader = null;
            int counter = 0;

            try
            {
                sqlConnection.Open();
                sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

                int startIndex = pageSize * pageIndex;
                int endIndex = startIndex + pageSize - 1;

                while (sqlDataReader.Read())
                {
                    if (counter >= startIndex)
                    {
                        MembershipUser membershipUser = GetUserFromReader(sqlDataReader);
                        membershipUsers.Add(membershipUser);
                    }

                    if (counter >= endIndex) { sqlCommand.Cancel(); }

                    counter += 1;
                }
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                if (sqlDataReader != null) { sqlDataReader.Close(); }
            }

            totalRecords = counter;

            return membershipUsers;
        }

        /// <summary>   Find all users matching a search string of their email. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="emailToMatch"> Search string of email to match. </param>
        /// <param name="pageIndex">    . </param>
        /// <param name="pageSize">     . </param>
        /// <param name="totalRecords"> [out] Total records found. </param>
        ///
        /// <returns>   Collection of MembershipUser objects. </returns>

        public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("Users_Sel_ByUserName", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@email", SqlDbType.NVarChar, 255).Value = emailToMatch;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            MembershipUserCollection membershipUsers = new MembershipUserCollection();
            SqlDataReader sqlDataReader = null;
            int counter = 0;

            try
            {
                sqlConnection.Open();
                sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

                int startIndex = pageSize * pageIndex;
                int endIndex = startIndex + pageSize - 1;

                while (sqlDataReader.Read())
                {
                    if (counter >= startIndex)
                    {
                        MembershipUser membershipUser = GetUserFromReader(sqlDataReader);
                        membershipUsers.Add(membershipUser);
                    }

                    if (counter >= endIndex) { sqlCommand.Cancel(); }

                    counter += 1;
                }
            }
            catch (SqlException e)
            {
                //Add exception handling here.
            }
            finally
            {
                if (sqlDataReader != null) { sqlDataReader.Close(); }
            }

            totalRecords = counter;

            return membershipUsers;
        }

        #endregion

        #region "Utility Functions"

        /// <summary>   Create a MembershipUser object from a data reader. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="sqlDataReader">    Data reader. </param>
        ///
        /// <returns>   MembershipUser object. </returns>

        private MembershipUser GetUserFromReader(SqlDataReader sqlDataReader)
        {

            object userID = sqlDataReader.GetValue(0);
            string username = sqlDataReader.GetString(1);
            string email = sqlDataReader.GetString(2);

            string passwordQuestion = String.Empty;
            if (sqlDataReader.GetValue(3) != DBNull.Value)
            {
                passwordQuestion = sqlDataReader.GetString(3);
            }

            string comment = String.Empty;
            if (sqlDataReader.GetValue(4) != DBNull.Value)
            {
                comment = sqlDataReader.GetString(4);
            }

            bool isApproved = sqlDataReader.GetBoolean(5);
            bool isLockedOut = sqlDataReader.GetBoolean(6);
            DateTime creationDate = sqlDataReader.GetDateTime(7);

            DateTime lastLoginDate = new DateTime();
            if (sqlDataReader.GetValue(8) != DBNull.Value)
            {
                lastLoginDate = sqlDataReader.GetDateTime(8);
            }

            DateTime lastActivityDate = sqlDataReader.GetDateTime(9);
            DateTime lastPasswordChangedDate = sqlDataReader.GetDateTime(10);

            DateTime lastLockedOutDate = new DateTime();
            if (sqlDataReader.GetValue(11) != DBNull.Value)
            {
                lastLockedOutDate = sqlDataReader.GetDateTime(11);
            }

            MembershipUser membershipUser = new MembershipUser(
                     this.Name,
                     username,
                     userID,
                     email,
                     passwordQuestion,
                     comment,
                     isApproved,
                     isLockedOut,
                     creationDate,
                     lastLoginDate,
                     lastActivityDate,
                     lastPasswordChangedDate,
                     lastLockedOutDate
                  );

            return membershipUser;
        }

        /// <summary>   
        /// Converts a hexadecimal string to a byte array. Used to convert encryption key values from the
        /// configuration. 
        /// </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="hexString">    . </param>
        ///
        /// <returns>   . </returns>

        private byte[] HexToByte(string hexString)
        {
            byte[] returnBytes = new byte[hexString.Length / 2];
            for (int i = 0; i < returnBytes.Length; i++)
                returnBytes[i] = Convert.ToByte(hexString.Substring(i * 2, 2), 16);
            return returnBytes;
        }

        /// <summary>   Update password and answer failure information. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username">     User name. </param>
        /// <param name="failureType">  Type of failure. </param>

        private void UpdateFailureCount(string username, FailureType failureType)
        {

            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand sqlCommand = new SqlCommand("Users_FailedPassword_Upd", sqlConnection);

            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.Parameters.Add("@failureType", SqlDbType.Int, 0).Value = failureType;
            sqlCommand.Parameters.Add("@passwordAttemptWindow", SqlDbType.Int, 0).Value = passwordAttemptWindow;
            sqlCommand.Parameters.Add("@maxInvalidPasswordAttempts", SqlDbType.Int, 0).Value = maxInvalidPasswordAttempts;
            sqlCommand.Parameters.Add("@userName", SqlDbType.NVarChar, 255).Value = username;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            try
            {
                sqlConnection.Open();
                sqlCommand.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                //Add exception handling here.
            }

        }

        /// <summary>   Check the password format based upon the MembershipPasswordFormat. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="password">     Password. </param>
        /// <param name="dbpassword">   . </param>
        ///
        /// <returns>   true if it succeeds, false if it fails. </returns>

        private bool CheckPassword(string password, string dbpassword)
        {
            string pass1 = password;
            string pass2 = dbpassword;

            switch (PasswordFormat)
            {
                case MembershipPasswordFormat.Encrypted:
                    pass2 = UnEncodePassword(dbpassword);
                    break;
                case MembershipPasswordFormat.Hashed:
                    pass1 = EncodePassword(password);
                    break;
                default:
                    break;
            }

            if (pass1 == pass2)
            {
                return true;
            }

            return false;
        }

        /// <summary>   Encode password. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="ProviderException">    Thrown when provider. </exception>
        ///
        /// <param name="password"> Password. </param>
        ///
        /// <returns>   Encoded password. </returns>

        private string EncodePassword(string password)
        {
            string encodedPassword = password;

            switch (PasswordFormat)
            {
                case MembershipPasswordFormat.Clear:
                    break;
                case MembershipPasswordFormat.Encrypted:
                    encodedPassword =
                      Convert.ToBase64String(EncryptPassword(Encoding.Unicode.GetBytes(password)));
                    break;
                case MembershipPasswordFormat.Hashed:
                    HMACSHA1 hash = new HMACSHA1();
                    hash.Key = HexToByte(machineKey.ValidationKey);
                    encodedPassword =
                      Convert.ToBase64String(hash.ComputeHash(Encoding.Unicode.GetBytes(password)));
                    break;
                default:
                    throw new ProviderException("Unsupported password format.");
            }

            return encodedPassword;
        }

        /// <summary>   UnEncode password. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="ProviderException">    Thrown when provider. </exception>
        ///
        /// <param name="encodedPassword">  Password. </param>
        ///
        /// <returns>   Unencoded password. </returns>

        private string UnEncodePassword(string encodedPassword)
        {
            string password = encodedPassword;

            switch (PasswordFormat)
            {
                case MembershipPasswordFormat.Clear:
                    break;
                case MembershipPasswordFormat.Encrypted:
                    password =
                      Encoding.Unicode.GetString(DecryptPassword(Convert.FromBase64String(password)));
                    break;
                case MembershipPasswordFormat.Hashed:
                    throw new ProviderException("Cannot unencode a hashed password.");
                default:
                    throw new ProviderException("Unsupported password format.");
            }

            return password;
        }

        #endregion

    }
}