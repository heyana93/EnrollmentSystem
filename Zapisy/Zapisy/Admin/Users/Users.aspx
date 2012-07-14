<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="Users.aspx.cs" Inherits="Admin_Users_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>Zarządzanie użytkownikami</h2>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Dodaj użytkownika" OnClick="Button1_Click" />
            </p>
            <p>
            Filtuj:
            <asp:DropDownList ID="type" runat="server" Width="120px" AutoPostBack="True" OnSelectedIndexChanged="type_SelectedIndexChanged">
                <asp:ListItem>Administrator</asp:ListItem>
                <asp:ListItem>Prowadzący</asp:ListItem>
                <asp:ListItem Selected="True">Student</asp:ListItem>
            </asp:DropDownList>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                        SelectCommand="Students_Sel_All" SelectCommandType="StoredProcedure" DeleteCommand="Student_Del"
                        DeleteCommandType="StoredProcedure">
                        <DeleteParameters>
                            <asp:Parameter Name="userID" Type="Empty" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Brak użytkowników do wyświetlenia."
                        CssClass="GridViewStyle" GridLines="Vertical" Width="600px" DataKeyNames="UserID"
                        OnRowEditing="GridView1_RowEditing">
                        <Columns>
                            <asp:BoundField DataField="UserID" HeaderText="UserID" Visible="False" />
                            <asp:BoundField DataField="UserName" HeaderText="Nazwa użyt." SortExpression="UserName" />
                            <asp:BoundField DataField="Name" HeaderText="Imię" SortExpression="Name" />
                            <asp:BoundField DataField="Surname" HeaderText="Nazwisko" SortExpression="Surname" />
                            <asp:BoundField DataField="StudyYear" HeaderText="Rok studiów" SortExpression="StudyYear" />
                            <asp:BoundField DataField="DueHours" HeaderText="Godziny" SortExpression="DueHours" />
                            <asp:TemplateField HeaderText="Termin zapisów" SortExpression="Date">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Date","{0:yyyy/MM/dd HH:mm}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ButtonType="Button" DeleteText="Usuń" HeaderText="Opcje" ShowDeleteButton="True"
                                ShowEditButton="True" EditText="Edytuj" />
                        </Columns>
                        <FooterStyle CssClass="GridViewFooterStyle" />
                        <HeaderStyle CssClass="GridViewHeaderStyle" />
                        <RowStyle CssClass="GridViewRowStyle" />
                        <PagerStyle CssClass="GridViewPagerStyle" />
                        <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                        <SortedAscendingCellStyle CssClass="GridViewSortedAscendingCellStyle" />
                        <SortedAscendingHeaderStyle CssClass="GridVieSortedAscendingHeaderStyle" />
                        <SortedDescendingCellStyle CssClass="GridViewSortedDescendingCellStyle" />
                        <SortedDescendingHeaderStyle CssClass="GridViewSortedDescendingHeaderStyle" />
                    </asp:GridView>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                        SelectCommand="Instructors_Sel_All" SelectCommandType="StoredProcedure" DeleteCommand="Instructor_Del"
                        DeleteCommandType="StoredProcedure">
                        <DeleteParameters>
                            <asp:Parameter Name="userID" Type="Empty" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True"
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EmptyDataText="Brak użytkowników do wyświetlenia."
                        CssClass="GridViewStyle" GridLines="Vertical" Width="420px" DataKeyNames="UserID"
                        OnRowEditing="GridView2_RowEditing">
                        <Columns>
                            <asp:BoundField DataField="UserID" HeaderText="UserID" Visible="False" />
                            <asp:BoundField DataField="UserName" HeaderText="Nazwa użyt." SortExpression="UserName" />
                            <asp:BoundField DataField="Name" HeaderText="Imię" SortExpression="Name" />
                            <asp:BoundField DataField="Surname" HeaderText="Nazwisko" SortExpression="Surname" />
                            <asp:CommandField ButtonType="Button" DeleteText="Usuń" HeaderText="Opcje" ShowDeleteButton="True"
                                ShowEditButton="True" EditText="Edytuj" />
                        </Columns>
                        <FooterStyle CssClass="GridViewFooterStyle" />
                        <HeaderStyle CssClass="GridViewHeaderStyle" />
                        <RowStyle CssClass="GridViewRowStyle" />
                        <PagerStyle CssClass="GridViewPagerStyle" />
                        <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                        <SortedAscendingCellStyle CssClass="GridViewSortedAscendingCellStyle" />
                        <SortedAscendingHeaderStyle CssClass="GridVieSortedAscendingHeaderStyle" />
                        <SortedDescendingCellStyle CssClass="GridViewSortedDescendingCellStyle" />
                        <SortedDescendingHeaderStyle CssClass="GridViewSortedDescendingHeaderStyle" />
                    </asp:GridView>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                        SelectCommand="User_Sel_Admins" SelectCommandType="StoredProcedure" DeleteCommand="User_Del_Admin"
                        DeleteCommandType="StoredProcedure">
                        <DeleteParameters>
                            <asp:Parameter Name="userID" Type="Empty" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True"
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EmptyDataText="Brak użytkowników do wyświetlenia."
                        CssClass="GridViewStyle" GridLines="Vertical" Width="540px" DataKeyNames="UserID">
                        <Columns>
                            <asp:BoundField DataField="UserID" HeaderText="UserID" Visible="False" />
                            <asp:BoundField DataField="Username" HeaderText="Nazwa użyt." SortExpression="Username" />
                            <asp:TemplateField HeaderText="Typ" SortExpression="Role">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# RoleToString(Eval("Role").ToString()) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Data utworzenia" SortExpression="CreationDate">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CreationDate","{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Aktywny" SortExpression="LastActivityDate">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastActivityDate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ButtonType="Button" DeleteText="Usuń" HeaderText="Opcje" ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle CssClass="GridViewFooterStyle" />
                        <HeaderStyle CssClass="GridViewHeaderStyle" />
                        <RowStyle CssClass="GridViewRowStyle" />
                        <PagerStyle CssClass="GridViewPagerStyle" />
                        <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                        <SortedAscendingCellStyle CssClass="GridViewSortedAscendingCellStyle" />
                        <SortedAscendingHeaderStyle CssClass="GridVieSortedAscendingHeaderStyle" />
                        <SortedDescendingCellStyle CssClass="GridViewSortedDescendingCellStyle" />
                        <SortedDescendingHeaderStyle CssClass="GridViewSortedDescendingHeaderStyle" />
                    </asp:GridView>
                </asp:View>
            </asp:MultiView>
        </p>
    </article>
</asp:Content>
