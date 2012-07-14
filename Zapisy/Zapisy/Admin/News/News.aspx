<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Admin_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
    <article>
        <h2>Zarządzanie aktualnościami</h2>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>" 
                DeleteCommand="News_Del" DeleteCommandType="StoredProcedure" 
                SelectCommand="News_Sel_All" SelectCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="newsID" Type="Empty" />
                </DeleteParameters>
            </asp:SqlDataSource>

            <asp:Button ID="Button1" runat="server" Text="Dodaj wiadomość" onclick="Button1_Click" />

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                EmptyDataText="Brak wiadomości do wyświetlenia." CssClass="GridViewStyle" 
                GridLines="Vertical" DataKeyNames="NewsID" 
                onrowediting="GridView1_RowEditing">
                <Columns>
                    <asp:BoundField DataField="NewsID" HeaderText="NewsID" 
                        Visible="False" />
                    <asp:TemplateField HeaderText="Tytuł" SortExpression="Title">
                        <ItemTemplate>
                            <asp:Label ID="Title" runat="server" Text='<%# Utilities.Shorten(Eval("Title").ToString(),15) %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="150px" Wrap="False" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Treść" SortExpression="Message">
                        <ItemTemplate>
                            <asp:Literal ID="Message" runat="server" Text='<%# Utilities.Shorten(Eval("Message").ToString(),30) %>'>
                            </asp:Literal>
                        </ItemTemplate>
                        <ItemStyle Width="250px" Wrap="False" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Date" HeaderText="Data" 
                        SortExpression="Date" >
                    <ItemStyle Width="150px" Wrap="False"/>
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" DeleteText="Usuń" HeaderText="Opcje" 
                        ShowDeleteButton="True" ShowEditButton="True" EditText="Edytuj" >
                    <ItemStyle Width="100px" Wrap="False" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle CssClass="GridViewFooterStyle" />                
                <HeaderStyle CssClass="GridViewHeaderStyle" />
                <RowStyle CssClass="GridViewRowStyle" />   
                <PagerStyle CssClass="GridViewPagerStyle" />
                <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />                
                <SortedAscendingCellStyle CssClass="GridViewSortedAscendingCellStyle" />
                <SortedAscendingHeaderStyle  CssClass="GridVieSortedAscendingHeaderStyle" />
                <SortedDescendingCellStyle  CssClass="GridViewSortedDescendingCellStyle" />
                <SortedDescendingHeaderStyle  CssClass="GridViewSortedDescendingHeaderStyle" />
            </asp:GridView>
            
        </p>
    </article>
</asp:Content>

