<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="MyProfile.aspx.cs" Inherits="Student_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            Mój profil - edytuj dane
        </h2>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Student_Sel_ByUserName" SelectCommandType="StoredProcedure" UpdateCommand="Student_Upd_ByUserName"
                UpdateCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:FormParameter FormField="userName" Name="userName" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:FormParameter FormField="userName" Name="userName" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="surname" Type="String" />
                    <asp:Parameter Name="studyYear" Type="Int32" />
                    <asp:Parameter Name="dueHours" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" CssClass="UpdateControl" DataSourceID="SqlDataSource1"
                DefaultMode="Edit" CellPadding="0" CellSpacing="5" Width="330px" OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    <table style="width: 330px">
                        <tr>
                            <td align="center" colspan="2">
                                <h4 style="margin-bottom: 10px">
                                    Informacje podstawowe</h4>
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
                                <asp:TextBox ID="StudyYearTextBox" runat="server" Width="50" Text='<%# Bind("StudyYear") %>' />
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
                                <asp:TextBox ID="DueHoursTextBox" Enabled="false" Width="50" runat="server" Text='<%# Bind("DueHours") %>' />
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
                                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                    Text="Zmień" />
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
            </asp:FormView>
            <br />
            <asp:ChangePassword ID="ChangePassword1" runat="server" CssClass="UpdateControl"
                Width="350" ChangePasswordFailureText="Podano błędne hasło.">
                <ChangePasswordTemplate>
                    <table style="width: 330px; margin: 9px">
                        <tr>
                            <td align="center" colspan="2">
                                <h4 style="margin-bottom: 10px">
                                    Zarządzanie hasłem</h4>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Hasło:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword"
                                    ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">Nowe hasło:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword"
                                    ErrorMessage="New Password is required." ToolTip="New Password is required."
                                    ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Potwierdź nowe hasło:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword"
                                    ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required."
                                    ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="NewPassword"
                                    ControlToValidate="ConfirmNewPassword" CssClass="FailureStyle" Display="Dynamic"
                                    ErrorMessage="Nowe hasło i potwierdzenie muszą się zgadzać." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="FailureStyle" colspan="2">
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False">
                                </asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword"
                                    Text="Zmień" ValidationGroup="ChangePassword1" />
                            </td>
                        </tr>
                    </table>
                </ChangePasswordTemplate>
                <SuccessTemplate>
                    <table style="width: 330px; margin: 9px">
                        <tr>
                            <td align="center">
                                <h4 style="margin-bottom: 10px">
                                    Zarządzanie hasłem</h4>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Label ID="succes" runat="server" Text="Hasło zostało zmienione." EnableViewState="False">
                                </asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="Button1" runat="server" Text="Wróc" onclick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </SuccessTemplate>
            </asp:ChangePassword>
            <br />
        </p>
    </article>
</asp:Content>
