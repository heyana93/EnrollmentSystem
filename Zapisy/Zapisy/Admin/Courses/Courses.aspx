<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="Courses.aspx.cs" Inherits="Admin_Courses_Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            Zarządzanie kursami</h2>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Dodaj kurs" OnClick="Button1_Click" />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Courses_Sel_All" SelectCommandType="StoredProcedure" UpdateCommand="Courses_Upd"
                UpdateCommandType="StoredProcedure" DeleteCommand="Course_Del" DeleteCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="courseID" Type="Object" />
                </DeleteParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Brak kursów do wyświetlenia."
                CssClass="GridViewStyle" GridLines="Vertical" DataKeyNames="CourseID" OnRowEditing="GridView1_RowEditing">
                <Columns>
                    <asp:BoundField DataField="CourseID" HeaderText="CourseID" ReadOnly="True" SortExpression="CourseID"
                        Visible="False" />
                    <asp:BoundField DataField="CourseName" HeaderText="Nazwa kursu" SortExpression="CourseName">
                        <ItemStyle Width="150px" Wrap="False" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Płeć" SortExpression="Sex">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Utilities.SexToString(Eval("Sex").ToString()) %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="100px" Wrap="False" />
                    </asp:TemplateField>
                    <asp:HyperLinkField HeaderText="Terminy" Text="Pokaż" DataNavigateUrlFormatString="~/Admin/Terms/Terms.aspx?courseID={0}"
                        DataNavigateUrlFields="courseID" />
                    <asp:CommandField ButtonType="Button" DeleteText="Usuń" HeaderText="Opcje" ShowDeleteButton="True"
                        ShowEditButton="True" EditText="Edytuj">
                        <ItemStyle Width="120px" Wrap="False" />
                    </asp:CommandField>
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
        </p>
    </article>
</asp:Content>
