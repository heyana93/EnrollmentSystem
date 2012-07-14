﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="Terms.aspx.cs" Inherits="Admin_Terms_Terms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            Zarządzanie terminami zajęć</h2>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Dodaj termin" OnClick="Button1_Click" /></p>
        <p>
            Wybierz kurs:
            <asp:DropDownList ID="course" runat="server" Width="150px" DataSourceID="SqlDataSource2"
                DataTextField="Column1" DataValueField="CourseID" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Courses_Sel_AllID" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Terms_SelByCourseID" SelectCommandType="StoredProcedure" DeleteCommand="Terms_Del"
                DeleteCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="course" Name="courseID" PropertyName="SelectedValue" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="termID" Type="Empty" />
                </DeleteParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Brak terminów do wyświetlenia."
                CssClass="GridViewStyle" GridLines="Vertical" DataKeyNames="TermID" Width="630px"
                OnRowEditing="GridView1_RowEditing">
                <Columns>
                    <asp:BoundField DataField="TermID" HeaderText="TermID" ReadOnly="True" SortExpression="TermID"
                        Visible="false" />
                    <asp:BoundField DataField="TermCode" HeaderText="Kod kursu" SortExpression="TermCode" />
                    <asp:BoundField DataField="Column1" HeaderText="Prowadzący" SortExpression="Column1"
                        ReadOnly="True" />
                    <asp:TemplateField HeaderText="Dzień" SortExpression="Day">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Utilities.DayToShortString(Eval("Day").ToString()) %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Godzina" SortExpression="StartTime">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Utilities.TimeToString(Eval("StartTime"),
                               Eval("FinishTime")) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Classroom" HeaderText="Sala" SortExpression="Classroom" />
                    <asp:BoundField DataField="Building" HeaderText="Budynek" SortExpression="Building" />
                    <asp:TemplateField HeaderText="Zapisani" SortExpression="Vacancies">
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# String.Format("{0}/{1}",
                                Int32.Parse(Eval("MaxMembers").ToString())-Int32.Parse(Eval("Vacancies").ToString()),
                                Eval("MaxMembers")) %>'></asp:Label>
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
        </p>
    </article>
</asp:Content>
