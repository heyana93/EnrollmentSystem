<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="CreateUser.aspx.cs" Inherits="Admin_Users_CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            Dodaj użytkownika</h2>
        <p>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" RequireEmail="False"
                        LoginCreatedUser="False" ContinueButtonText="Dalej" CreateUserButtonText="Dalej"
                        CssClass="UpdateControl" CellSpacing="5" OnCreatedUser="CreateUserWizard1_CreatedUser"
                        StartNextButtonText="Dalej">
                        <WizardSteps>
                            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                                <ContentTemplate>
                                    <table style="width: 360px">
                                        <p style="text-align: left">
                                            Kreator > Krok 1</p>
                                        <tr>
                                            <td align="center" colspan="2">
                                                <h4 style="margin-bottom: 10px">
                                                    Podstawowe informacje</h4>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nazwa użytkownika:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                    ErrorMessage="Nazwa użytkownika jest wymagana." ToolTip="User Name is required."
                                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Hasło:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                    ErrorMessage="Hasło jest wymagane." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Potwierdź hasło:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                                    ErrorMessage="Potwierdź hasło jest wymagane." ToolTip="Confirm Password is required."
                                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                Typ:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="type" runat="server" Width="120px">
                                                    <asp:ListItem>Administrator</asp:ListItem>
                                                    <asp:ListItem>Prowadzący</asp:ListItem>
                                                    <asp:ListItem Selected="True">Student</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">
                                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                                    ControlToValidate="ConfirmPassword" CssClass="FailureStyle" Display="Dynamic"
                                                    ErrorMessage="Hasło i potwierdzenie hasła muszą się zgadzać." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="FailureStyle" colspan="2">
                                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                            </asp:CreateUserWizardStep>
                        </WizardSteps>
                    </asp:CreateUserWizard>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                        InsertCommand="Student_Ins" InsertCommandType="StoredProcedure" SelectCommand="Students_Sel_All"
                        SelectCommandType="StoredProcedure">
                        <InsertParameters>
                            <asp:ControlParameter Name="userName" ControlID="CreateUserWizard1" PropertyName="UserName"
                                Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="surname" Type="String" />
                            <asp:Parameter Name="studyYear" Type="Int32" />
                            <asp:Parameter Name="dueHours" Type="Int32" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView1" runat="server" CssClass="UpdateControl" DataSourceID="SqlDataSource1"
                        DefaultMode="Insert" CellPadding="0" CellSpacing="5" Width="360px" OnItemInserted="FormView1_ItemInserted">
                        <InsertItemTemplate>
                            <table style="width: 360px">
                                <p style="text-align: left">
                                    Kreator > Krok 2</p>
                                <tr>
                                    <td align="center" colspan="2">
                                        <h4 style="margin-bottom: 10px">
                                            Dodatkowe informacje</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="NameLabel" runat="server">Imię:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                        <asp:RequiredFieldValidator ID="NameRequired" runat="server" ControlToValidate="NameTextBox"
                                            ErrorMessage="Imię jest wymagane.">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="SurNameLabel" runat="server">Nazwisko:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                                        <asp:RequiredFieldValidator ID="SurnameRequired" runat="server" ControlToValidate="SurnameTextBox"
                                            ErrorMessage="Nazwisko jest wymagane.">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="StudyYearLabel" runat="server">Rok studiów:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="StudyYearTextBox" runat="server" Text='<%# Bind("StudyYear") %>' />
                                        <asp:RequiredFieldValidator ID="StudyYearRequired" runat="server" ControlToValidate="StudyYearTextBox"
                                            ErrorMessage="Rok studiów jest wymagany.">*</asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" MinimumValue="1" MaximumValue="5"
                                            Display="None" ErrorMessage="Rok studiów musi być pomiędzy 1 i 5." Type="Integer"
                                            ControlToValidate="StudyYearTextBox"></asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="DueHoursLabel" runat="server">Przyznane godziny:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="DueHoursTextBox" runat="server" Text='<%# Bind("DueHours") %>' />
                                        <asp:RequiredFieldValidator ID="DueHoursRequired" runat="server" ControlToValidate="DueHoursTextBox"
                                            ErrorMessage="Liczba godzin jest wymagana.">*</asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator2" runat="server" MinimumValue="1" MaximumValue="100"
                                            Display="None" ErrorMessage="Przyznane godziny muszą być pomiędzy 1 i 100." Type="Integer"
                                            ControlToValidate="DueHoursTextBox"></asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="FailureStyle" colspan="2">
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="FailureStyle"
                                            DisplayMode="List" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="right">
                                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                            Text="Dalej" />
                                    </td>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                    </asp:FormView>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                        InsertCommand="Instructor_Ins" InsertCommandType="StoredProcedure" SelectCommand="Instructors_Sel_All"
                        SelectCommandType="StoredProcedure">
                        <InsertParameters>
                            <asp:ControlParameter Name="userName" ControlID="CreateUserWizard1" PropertyName="UserName"
                                Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="surname" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                        SelectCommand="Qual_Sel_All" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                        InsertCommand="InstrInQual_InsByUName" InsertCommandType="StoredProcedure" 
                        oninserting="SqlDataSource4_Inserting">
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView2" runat="server" CssClass="UpdateControl" DataSourceID="SqlDataSource2"
                        DefaultMode="Insert" CellPadding="0" CellSpacing="5" Width="360px" OnItemInserted="FormView2_ItemInserted">
                        <InsertItemTemplate>
                            <table style="width: 360px">
                                <caption>
                                    <p style="text-align: left">
                                        Kreator &gt; Krok 2</p>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <h4 style="margin-bottom: 10px">
                                                Dodatkowe informacje</h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="NameLabel" runat="server">Imię:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                            <asp:RequiredFieldValidator ID="NameRequired" runat="server" ControlToValidate="NameTextBox"
                                                ErrorMessage="Imię jest wymagane.">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="SurNameLabel" runat="server">Nazwisko:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                                            <asp:RequiredFieldValidator ID="SurnameRequired" runat="server" ControlToValidate="SurnameTextBox"
                                                ErrorMessage="Nazwisko jest wymagane.">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <br>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            Dodaj kwalifikacje do prowadzącego:<br />
                                            <h5 style="margin-bottom: 5px">
                                                (wybieranie wielokrotne)</h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:ListBox ID="outQual" runat="server" Width="150px" DataSourceID="SqlDataSource3"
                                                DataTextField="Description" DataValueField="QualificationID" 
                                                SelectionMode="Multiple"></asp:ListBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td align="right">
                                            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                                Text="Dalej" />
                                        </td>
                                    </tr>
                                </caption>
                            </table>
                        </InsertItemTemplate>
                    </asp:FormView>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <asp:FormView ID="FormView3" runat="server" CssClass="UpdateControl" DataSourceID="SqlDataSource1"
                        DefaultMode="ReadOnly" CellPadding="0" CellSpacing="5" Width="360px" OnItemInserted="FormView1_ItemInserted">
                        <ItemTemplate>
                            <table style="width: 360px">
                                <caption>
                                    <p style="text-align: left">
                                        Kreator &gt; Koniec</p>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <h5 style="margin-bottom: 10px">
                                                Użytkownik został dodany do bazy.</h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td align="right">
                                            <asp:Button ID="EndButton" runat="server" CausesValidation="True" 
                                                onclick="EndButton_Click" Text="Zakończ" />
                                        </td>
                                    </tr>
                                </caption>
                            </table>
                        </ItemTemplate>
                    </asp:FormView>
                </asp:View>
            </asp:MultiView>
        </p>
    </article>
</asp:Content>
