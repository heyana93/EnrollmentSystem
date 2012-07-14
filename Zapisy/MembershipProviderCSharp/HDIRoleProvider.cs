//Adapted from: http://msdn.microsoft.com/en-us/library/317sza4k.aspx
using System;
using System.Collections.Generic;
using System.Text;
using System.Web.Security;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Specialized;
using System.Configuration.Provider;
using System.Diagnostics;

// namespace: HDI.AspNet.Membership
//
// summary:	Namespace for user providers.

namespace HDI.AspNet.Membership
{
    /// <summary>   Hdi role provider. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>

    public sealed class HDIRoleProvider : RoleProvider
    {

        #region Class Variables

        /// <summary> The event source </summary>
        private string eventSource;

        /// <summary> The event log </summary>
        private string eventLog;

        /// <summary> Message describing the exception </summary>
        private string exceptionMessage;

        /// <summary> The connection string </summary>
        private string connectionString;

        /// <summary> Name of the application </summary>
        private string applicationName;

        /// <summary> true to write exceptions to event log </summary>
        private bool writeExceptionsToEventLog;

        #endregion

        #region Properties

        /// <summary>   
        /// Gets or sets the name of the application to store and retrieve role information for. 
        /// </summary>
        ///
        /// <value> The name of the application. </value>
        ///
        /// ### <returns>   The name of the application to store and retrieve role information for. </returns>

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
        /// Gets or sets a value indicating whether the exceptions to event log should be written. 
        /// </summary>
        ///
        /// <value> true if write exceptions to event log, false if not. </value>

        public bool WriteExceptionsToEventLog
        {
            get 
            { 
                return writeExceptionsToEventLog; 
            }
            set 
            { 
                writeExceptionsToEventLog = value; 
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
                throw new ArgumentNullException("config");

            if (name == null || name.Length == 0)
                name = "HDIRoleProvider";

            if (String.IsNullOrEmpty(config["description"]))
            {
                config.Remove("description");
                config.Add("description", "Role provider");
            }

            // Initialize the abstract base class.
            base.Initialize(name, config);
            
            if (config["applicationName"] == null || config["applicationName"].Trim() == "")
            {
                applicationName = System.Web.Hosting.HostingEnvironment.ApplicationVirtualPath;
            }
            else
            {
                applicationName = config["applicationName"];
            }
            
            if (config["writeExceptionsToEventLog"] != null)
            {
                if (config["writeExceptionsToEventLog"].ToUpper() == "TRUE")
                {
                    writeExceptionsToEventLog = true;
                }
            }

            eventSource = "HDIRoleProvider";
            eventLog = applicationName;
            exceptionMessage = "An exception occurred. Please check the Event Log.";
            
            ConnectionStringSettings ConnectionStringSettings = ConfigurationManager.ConnectionStrings[config["connectionStringName"]];

            if ((ConnectionStringSettings == null) || (ConnectionStringSettings.ConnectionString.Trim() == String.Empty))
            {
                throw new ProviderException("Connection string cannot be blank.");
            }

            connectionString = ConnectionStringSettings.ConnectionString;
        }

        #endregion

        #region Implemented Abstract Methods from RoleProvider

        /// <summary>   
        /// Adds the specified user names to the specified roles for the configured applicationName. 
        /// </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="usernames">    A string array of user names to be added to the specified roles. </param>
        /// <param name="roleNames">    A string array of the role names to add the specified user names
        ///                             to. </param>

        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
            int i = 0;
            foreach (string username in usernames)
            {
                SetRole(username, roleNames[i]);
                i++;
            }
        }

        /// <summary>   Adds a user to role to 'roleName'. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username"> The username. </param>
        /// <param name="roleName"> Name of the role. </param>

        public void AddUserToRole(string username, string roleName)
        {
            SetRole(username, roleName);
        }

        /// <summary>   Adds a new role to the data source for the configured applicationName. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="NotImplementedException">  Thrown when the requested operation is
        ///                                             unimplemented. </exception>
        ///
        /// <param name="roleName"> The name of the role to create. </param>

        public override void CreateRole(string roleName)
        {
            throw new NotImplementedException();
        }

        /// <summary>   Removes a role from the data source for the configured applicationName. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="NotImplementedException">  Thrown when the requested operation is
        ///                                             unimplemented. </exception>
        ///
        /// <param name="roleName">             The name of the role to delete. </param>
        /// <param name="throwOnPopulatedRole"> If true, throw an exception if <paramref name="roleName"
        ///                                     /> has one or more members and do not delete <paramref
        ///                                     name="roleName" />. </param>
        ///
        /// <returns>   true if the role was successfully deleted; otherwise, false. </returns>

        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            throw new NotImplementedException();
        }

        /// <summary>   
        /// Gets an array of user names in a role where the user name contains the specified user name to
        /// match. 
        /// </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="NotImplementedException">  Thrown when the requested operation is
        ///                                             unimplemented. </exception>
        ///
        /// <param name="roleName">         The role to search in. </param>
        /// <param name="usernameToMatch">  The user name to search for. </param>
        ///
        /// <returns>   
        /// A string array containing the names of all the users where the user name matches <paramref
        /// name="usernameToMatch" /> and the user is a member of the specified role. 
        /// </returns>

        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
        {
            throw new NotImplementedException();
        }

        /// <summary>   Gets a list of all the roles for the configured applicationName. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="NotImplementedException">  Thrown when the requested operation is
        ///                                             unimplemented. </exception>
        ///
        /// <returns>   
        /// A string array containing the names of all the roles stored in the data source for the
        /// configured applicationName. 
        /// </returns>

        public override string[] GetAllRoles()
        {
            throw new NotImplementedException();
        }

        /// <summary>   
        /// Gets a list of the roles that a specified user is in for the configured applicationName. 
        /// </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username"> The user to return a list of roles for. </param>
        ///
        /// <returns>   
        /// A string array containing the names of all the roles that the specified user is in for the
        /// configured applicationName. 
        /// </returns>

        public override string[] GetRolesForUser(string username)
        {
            String[] roles = new String[1];
            String handledRole = GetRole(username);

            if (handledRole != String.Empty)
            {
                roles[0] = handledRole;
                return roles;
            }
            else
                return new string[0];
        }

        /// <summary>   Gets a list of users in the specified role for the configured applicationName. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="NotImplementedException">  Thrown when the requested operation is
        ///                                             unimplemented. </exception>
        ///
        /// <param name="roleName"> The name of the role to get the list of users for. </param>
        ///
        /// <returns>   
        /// A string array containing the names of all the users who are members of the specified role
        /// for the configured applicationName. 
        /// </returns>

        public override string[] GetUsersInRole(string roleName)
        {
            throw new NotImplementedException();
        }

        /// <summary>   
        /// Gets a value indicating whether the specified user is in the specified role for the
        /// configured applicationName. 
        /// </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username"> The user name to search for. </param>
        /// <param name="roleName"> The role to search in. </param>
        ///
        /// <returns>   
        /// true if the specified user is in the specified role for the configured applicationName;
        /// otherwise, false. 
        /// </returns>

        public override bool IsUserInRole(string username, string roleName)
        {
            String handledRole = GetRole(username);

            if (handledRole == roleName)
                return true;
            else
                return false;
        }

        /// <summary>   
        /// Removes the specified user names from the specified roles for the configured applicationName. 
        /// </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="NotImplementedException">  Thrown when the requested operation is
        ///                                             unimplemented. </exception>
        ///
        /// <param name="usernames">    A string array of user names to be removed from the specified
        ///                             roles. </param>
        /// <param name="roleNames">    A string array of role names to remove the specified user names
        ///                             from. </param>

        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        /// <summary>   
        /// Gets a value indicating whether the specified role name already exists in the role data
        /// source for the configured applicationName. 
        /// </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <exception cref="NotImplementedException">  Thrown when the requested operation is
        ///                                             unimplemented. </exception>
        ///
        /// <param name="roleName"> The name of the role to search for in the data source. </param>
        ///
        /// <returns>   
        /// true if the role name already exists in the data source for the configured applicationName;
        /// otherwise, false. 
        /// </returns>

        public override bool RoleExists(string roleName)
        {
            throw new NotImplementedException();
        }

        #endregion

        #region Utility Functions

        /// <summary>   Writes to event log. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="e">        Details of the exception. </param>
        /// <param name="action">   The action. </param>

        private void WriteToEventLog(SqlException e, string action)
        {
            EventLog log = new EventLog();
            log.Source = eventSource;
            log.Log = eventLog;

            string message = exceptionMessage + "\n\n";
            message += "Action: " + action + "\n\n";
            message += "Exception: " + e.ToString();

            log.WriteEntry(message);
        }

        /// <summary>   Gets a role. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username"> The username. </param>
        ///
        /// <returns>   The role. </returns>

        private String GetRole(string username)
        {
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlDataReader sqlDataReader = null;

            SqlCommand sqlCommand = new SqlCommand("User_GetRole", sqlConnection);
            sqlCommand.CommandType = CommandType.StoredProcedure;

            sqlCommand.Parameters.Add("@userName", SqlDbType.NVarChar, 255).Value = username;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;

            try
            {
                sqlConnection.Open();
                sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

                if (sqlDataReader.HasRows)
                {
                    sqlDataReader.Read();
                    if (sqlDataReader.IsDBNull(0))
                        return String.Empty;
                    else
                        return sqlDataReader.GetString(0);
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

            return String.Empty;
        }

        /// <summary>   Sets a role. </summary>
        ///
        /// <remarks>   Mat, 2011-01-25. </remarks>
        ///
        /// <param name="username"> The username. </param>
        /// <param name="roleName"> Name of the role. </param>

        private void SetRole(string username, string roleName)
        {
            SqlConnection sqlConnection = new SqlConnection(connectionString);

            SqlCommand sqlCommand = new SqlCommand("User_Upd_Role", sqlConnection);
            sqlCommand.CommandType = CommandType.StoredProcedure;

            sqlCommand.Parameters.Add("@userName", SqlDbType.NVarChar, 255).Value = username;
            sqlCommand.Parameters.Add("@applicationName", SqlDbType.NVarChar, 255).Value = applicationName;
            sqlCommand.Parameters.Add("@role", SqlDbType.NVarChar, 128).Value = roleName;

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

        #endregion

    }
}
