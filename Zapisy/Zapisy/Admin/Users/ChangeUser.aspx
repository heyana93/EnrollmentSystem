<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="ChangeUser.aspx.cs" Inherits="Admin_Users_ChangeUser" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            Edytuj użytkownika</h2>
        <p>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:ScriptManager ID="ScriptManager1" EnableScriptGlobalization="true" runat="server" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                        SelectCommand="Student_Sel_ByUserID" SelectCommandType="StoredProcedure" UpdateCommand="Student_Upd"
                        UpdateCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="userID" QueryStringField="userID" Type="Empty" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:QueryStringParameter Name="userID" QueryStringField="userID" Type="Empty" />
                            <asp:Parameter Name="userName" Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="surname" Type="String" />
                            <asp:Parameter Name="studyYear" Type="Int32" />
                            <asp:Parameter Name="dueHours" Type="Int32" />
                            <asp:Parameter Name="date" Type="DateTime" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView1" runat="server" CssClass="UpdateControl" DataSourceID="SqlDataSource1"
                        DefaultMode="Edit" CellPadding="0" CellSpacing="5" Width="350px" OnItemCommand="FormView1_ItemCommand"
                        OnItemUpdated="FormView1_ItemUpdated">
                        <EditItemTemplate>
                            <table style="width: 350px">
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="Label2" runat="server">Nazwa użytkownika:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
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
                                    <td align="right">
                                        <asp:Label ID="Label1" runat="server">Termin zapisów:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                                        <a href="#">
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/calendar.png" /></a>
                                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="DateTextBox"
                                            PopupButtonID="Image1">
                                        </asp:CalendarExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="FailureStyle" colspan="2">
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="FailureStyle"
                                            DisplayMode="List" />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="right">
                                        <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                            Text="Zapisz" />
                                        &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False"
                                            CommandName="Cancel" Text="Anuluj" />
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                    </asp:FormView>
                    <br />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                        SelectCommand="Instructor_Sel_ByUserID" SelectCommandType="StoredProcedure" UpdateCommand="Instructor_Upd"
                        UpdateCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="userID" QueryStringField="userID" Type="Empty" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:QueryStringParameter Name="userID" QueryStringField="userID" Type="Empty" />
                            <asp:Parameter Name="userName" Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="surname" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView2" runat="server" CssClass="UpdateControl" DataSourceID="SqlDataSource2"
                        DefaultMode="Edit" CellPadding="0" CellSpacing="5" Width="350px" OnItemCommand="FormView1_ItemCommand"
                        OnItemUpdated="FormView1_ItemUpdated">
                        <EditItemTemplate>
                            <table style="width: 350px">
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="Label2" runat="server">Nazwa użytkownika:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
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
                                    <td align="center" class="FailureStyle" colspan="2">
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="FailureStyle"
                                            DisplayMode="List" />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td align="right">
                                        <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                            Text="Zapisz" />
                                        &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False"
                                            CommandName="Cancel" Text="Anuluj" />
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                    </asp:FormView>
                    <br />
                </asp:View>
            </asp:MultiView>
        </p>
    </article>
</asp:Content>
