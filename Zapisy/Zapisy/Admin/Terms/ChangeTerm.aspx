<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="ChangeTerm.aspx.cs" Inherits="Admin_Terms_ChangeTerm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            Edytuj wybrany termin</h2>
        <p>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Instructors_Sel_AllID_ByQual" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="FormView1$course" Name="courseID" PropertyName="SelectedValue"
                        Type="Empty" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Courses_Sel_AllID" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                UpdateCommand="Terms_Upd" UpdateCommandType="StoredProcedure" SelectCommand="Terms_SelByTermID"
                SelectCommandType="StoredProcedure" OnUpdating="SqlDataSource1_Updating">
                <SelectParameters>
                    <asp:QueryStringParameter Name="termID" QueryStringField="termID" Type="Empty" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:QueryStringParameter Name="termID" QueryStringField="termID" Type="Empty" />
                    <asp:ControlParameter ControlID="FormView1$course" Name="courseID" PropertyName="SelectedValue"
                        Type="Empty" />
                    <asp:ControlParameter ControlID="FormView1$instr" Name="instructorID" PropertyName="SelectedValue"
                        Type="Empty" />
                    <asp:Parameter Name="termCode" Type="String" />
                    <asp:Parameter Name="classroom" Type="String" />
                    <asp:Parameter Name="building" Type="String" />
                    <asp:ControlParameter ControlID="FormView1$day" Name="day" PropertyName="SelectedValue"
                        Type="String" />
                    <asp:Parameter Name="startTime" DbType="Time" />
                    <asp:Parameter Name="finishTime" DbType="Time" />
                    <asp:Parameter Name="maxMembers" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" CssClass="UpdateControl" DataKeyNames="TermID"
                DataSourceID="SqlDataSource1" DefaultMode="Edit" CellPadding="0" CellSpacing="5"
                Width="360px" OnItemCommand="FormView1_ItemCommand" OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    <table style="width: 360px">
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label2" runat="server">Kurs:</asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="course" runat="server" Width="150px" DataSourceID="SqlDataSource2"
                                    DataTextField="Column1" DataValueField="CourseID" SelectedValue='<%# Eval("CourseID") %>'
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label3" runat="server">Prowadzący:</asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="instr" runat="server" Width="150px" AutoPostBack="True" DataSourceID="SqlDataSource3"
                                    DataTextField="Column1" DataValueField="InstructorID" SelectedValue='<%#DataBinder.Eval(Container.DataItem,"InstructorID")%>' >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label7" runat="server">Dzień:</asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="day" runat="server" Width="60px" AutoPostBack="True" 
                                    SelectedValue='<%# Eval("Day") %>'>
                                    <asp:ListItem Value="MON">PN</asp:ListItem>
                                    <asp:ListItem Value="TUE">WT</asp:ListItem>
                                    <asp:ListItem Value="WEN">ŚR</asp:ListItem>
                                    <asp:ListItem Value="THU">CZ</asp:ListItem>
                                    <asp:ListItem Value="FRI">PT</asp:ListItem>
                                    <asp:ListItem Value="SAT">SO</asp:ListItem>
                                    <asp:ListItem Value="SUN">NE</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label6" runat="server">Czas rozpoczęcia:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="StartTimeTextBox" runat="server" Width="80px" Text='<%# Bind("StartTime") %>' />
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Czas rozpoczęcia musi być pomiędzy 07:00 a 21:00."
                                    Display="None" ControlToValidate="StartTimeTextBox" MaximumValue="21:00" MinimumValue="07:00"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label5" runat="server">Czas zakończenia:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="FinishTimeTextBox" runat="server" Width="80px" Text='<%# Bind("FinishTime") %>' />
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Czas zakończenia musi być pomiędzy 07:00 a 21:00."
                                    Display="None" ControlToValidate="FinishTimeTextBox" MaximumValue="21:00" MinimumValue="07:00"></asp:RangeValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Czas zakończenia musi być późniejszy niż czas rozpoczęcia."
                                    Display="None" ControlToValidate="FinishTimeTextBox" ControlToCompare="StartTimeTextBox"
                                    Operator="GreaterThan"></asp:CompareValidator>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Prowadzący ma już zajęcia w wybranym terminie."
                                    Display="none" ControlToValidate="FinishTimeTextBox" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label1" runat="server">Budynek:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="BuildingTextBox" runat="server" Width="80px" Text='<%# Bind("Building") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label4" runat="server">Sala:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ClassroomTextBox" runat="server" Width="60px" Text='<%# Bind("Classroom") %>' />
                                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Wybrana sala jest już zajęta w tym termine."
                                    Display="none" ControlToValidate="ClassroomTextBox" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="SurNameLabel" runat="server">Maks. liczba zapisanych:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="MaxMembersTextBox" runat="server" Width="60px" Text='<%# Bind("MaxMembers") %>' />
                                <asp:RequiredFieldValidator ID="SurnameRequired" runat="server" ControlToValidate="MaxMembersTextBox"
                                    ErrorMessage="Max liczba zapisanych jest wymagana." Display="None"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Maks. liczba zapisanych musi być pomiędzy 1 a 300."
                                    Display="None" ControlToValidate="MaxMembersTextBox" MaximumValue="300" MinimumValue="1"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="FailureStyle"
                                    DisplayMode="BulletList" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td align="right">
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                                    Text="Zapisz" />
                                &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Text="Anuluj" />
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
            </asp:FormView>
        </p>
    </article>
</asp:Content>
