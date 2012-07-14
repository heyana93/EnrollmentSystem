<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
        SelectCommand="News_Sel_All" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="NewsID" DataSourceID="SqlDataSource1"
        OnDataBound="ListView1_DataBound">
        <EmptyDataTemplate>
            <h2>
                Brak wiadomości.</h2>
        </EmptyDataTemplate>
        <ItemTemplate>
            <article>
                <h2 class="news-title">
                    <a href="#">
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                    </a>
                </h2>
                <div class="news-date">
                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />        
                </div>
                <p class="news-message">
                    <asp:Label ID="MessageLabel"  runat="server" Text='<%# Eval("Message") %>' />        
                </p>
                <hr />
            </article>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholder" contentplaceholderid="items" runat="server">
            </div>
            <center>
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" ShowNextPageButton="False"
                            ShowPreviousPageButton="False" FirstPageText="<<" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ShowNextPageButton="False"
                            ShowPreviousPageButton="False" LastPageText=">>" />
                    </Fields>
                </asp:DataPager>
            </center>
        </LayoutTemplate>
    </asp:ListView>
</asp:Content>
