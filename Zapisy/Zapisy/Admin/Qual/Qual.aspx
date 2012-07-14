<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="Qual.aspx.cs" Inherits="Admin_Qual_Qual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>Zarządzanie kwalifikacjami prowadzących</h2>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <InsertItemTemplate>
                <tr>
                    <td>
                        Nowy rodzaj kwalifikacji:
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                    </td>
                    <td align="right">
                        &nbsp;<asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                            Text="Dodaj" />
                    </td>
                </tr>
            </InsertItemTemplate>
        </asp:FormView>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                DeleteCommand="Qual_Del" DeleteCommandType="StoredProcedure" SelectCommand="Qual_Sel_All"
                SelectCommandType="StoredProcedure" InsertCommand="Qual_Ins" InsertCommandType="StoredProcedure"
                UpdateCommand="Qual_Upd" UpdateCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="qualificationID" Type="Empty" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="qualificationID" Type="Empty" />
                    <asp:Parameter Name="description" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="GridViewStyle"
                GridLines="Vertical" DataKeyNames="QualificationID" Width="400px" PageSize="5">
                <EmptyDataTemplate>
                    Brak kwalifikacji do wyświetlenia.<br>
                </EmptyDataTemplate>
                <Columns>
                    <asp:BoundField DataField="QualificationID" HeaderText="QualificationID" ReadOnly="True"
                        SortExpression="QualificationID" Visible="False" />
                    <asp:TemplateField HeaderText="Rodzaj kwalifikacji" SortExpression="Description">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Utilities.Shorten(Eval("Description").ToString(),30) %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemStyle Width="250px" Wrap="False" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Opcje" ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit"
                                Text="Edytuj" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete"
                                Text="Usuń" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update"
                                Text="Zmień" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel"
                                Text="Anuluj" />
                        </EditItemTemplate>
                    </asp:TemplateField>
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
