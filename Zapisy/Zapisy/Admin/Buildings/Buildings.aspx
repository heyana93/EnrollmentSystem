<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="Buildings.aspx.cs" Inherits="Admin_Buildings_Buildings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            Zarządzanie odległością między budynkami</h2>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Dodaj nową odległość" OnClick="Button1_Click" />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Buildings_Sel_All" SelectCommandType="StoredProcedure" DeleteCommand="Buildings_Del"
                DeleteCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="building1" Type="String" />
                    <asp:Parameter Name="building2" Type="String" />
                </DeleteParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Brak budynków do wyświetlenia."
                CssClass="GridViewStyle" GridLines="Vertical" OnRowEditing="GridView1_RowEditing"
                DataKeyNames="Building1,Building2">
                <Columns>
                    <asp:BoundField DataField="Building1" HeaderText="Budynek nr 1" SortExpression="Building1">
                        <ItemStyle Width="150px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Building2" HeaderText="Budynek nr 2" SortExpression="Building2">
                        <ItemStyle Width="150px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Distance" HeaderText="Odległość(min)" SortExpression="Distance">
                        <ItemStyle Width="120px" Wrap="False" />
                    </asp:BoundField>
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
