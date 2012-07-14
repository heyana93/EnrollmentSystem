<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="ChangeBuilding.aspx.cs" Inherits="Admin_Buildings_ChangeBuilding" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            <%= heading %>
        </h2>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                InsertCommand="Buildings_Ins" InsertCommandType="StoredProcedure" SelectCommand="Buildings_Sel_ByBuilding"
                SelectCommandType="StoredProcedure" UpdateCommand="Buildings_Upd" UpdateCommandType="StoredProcedure">
                <InsertParameters>
                    <asp:Parameter Name="building1" Type="String" />
                    <asp:Parameter Name="building2" Type="String" />
                    <asp:Parameter Name="distance" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="building1" QueryStringField="building1" Type="String" />
                    <asp:QueryStringParameter Name="building2" QueryStringField="building2" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="building1" Type="String" />
                    <asp:Parameter Name="building2" Type="String" />
                    <asp:Parameter Name="distance" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" CssClass="UpdateControl" DataSourceID="SqlDataSource1"
                DefaultMode="Insert" CellPadding="0" CellSpacing="5" Width="280px" OnItemCommand="FormView1_ItemCommand"
                OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    Budynek nr 1:
                    <asp:TextBox ID="Building1TextBox" runat="server" Text='<%# Bind("Building1") %>' />
                    <br />
                    <br />
                    Budynek nr 2:
                    <asp:TextBox ID="Building2TextBox" runat="server" Text='<%# Bind("Building2") %>' />
                    <br />
                    <br />
                    Odległość(min):
                    <asp:TextBox ID="DistanceTextBox" runat="server" Text='<%# Bind("Distance") %>' />
                    <br />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                        Text="Zapisz" />
                    &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" Text="Anuluj" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Budynek nr 1:
                    <asp:TextBox ID="Building1TextBox" runat="server" Text='<%# Bind("Building1") %>' />
                    <br />
                    <br />
                    Budynek nr 2:
                    <asp:TextBox ID="Building2TextBox" runat="server" Text='<%# Bind("Building2") %>' />
                    <br />
                    <br />
                    Odległość(min):
                    <asp:TextBox ID="DistanceTextBox" runat="server" Text='<%# Bind("Distance") %>' />
                    <br />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                        Text="Dodaj" />
                    &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" Text="Anuluj" />
                </InsertItemTemplate>
            </asp:FormView>
            <br />
        </p>
    </article>
</asp:Content>
