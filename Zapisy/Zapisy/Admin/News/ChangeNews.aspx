<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="ChangeNews.aspx.cs" Inherits="Admin_News_ChangeNews" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            <%= heading %>
        </h2>
        <p>
            <asp:ScriptManager ID="ScriptManager1" EnableScriptGlobalization="true" runat="server">
            </asp:ScriptManager>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                InsertCommand="News_Ins" InsertCommandType="StoredProcedure" SelectCommand="News_Sel_ByNewsID"
                SelectCommandType="StoredProcedure" UpdateCommand="News_Upd" UpdateCommandType="StoredProcedure">
                <InsertParameters>
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="message" Type="String" />
                    <asp:Parameter Name="date" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="newsID" QueryStringField="newsID" Type="Empty" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="newsID" Type="Empty" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="message" Type="String" />
                    <asp:Parameter Name="date" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" CssClass="UpdateControl" DataKeyNames="NewsID"
                DataSourceID="SqlDataSource1" DefaultMode="Insert" CellPadding="0" CellSpacing="5"
                Width="480px" OnItemCommand="FormView1_ItemCommand" OnItemInserted="FormView1_ItemInserted"
                OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    Tytuł<br />
                    <asp:TextBox ID="TitleTextBox" runat="server" Height="20px" Text='<%# Bind("Title") %>'
                        Width="300px" Wrap="False" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TitleTextBox"
                        Display="Dynamic" ErrorMessage="Tytuł jest wymagany." CssClass="FailureStyle">
                    </asp:RequiredFieldValidator>
                    <br />
                    Treść<br />
                    <asp:TextBox ID="MessageTextBox" runat="server" Height="100px" Text='<%# Bind("Message") %>'
                        Width="470px" Wrap="True" TextMode="MultiLine" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="MessageTextBox"
                        Display="Dynamic" ErrorMessage="Treść jest wymagana." CssClass="FailureStyle">
                    </asp:RequiredFieldValidator>
                    <br />
                    Data<br />
                    <asp:TextBox ID="DateTextBox" runat="server" Height="20px" Text='<%# Bind("Date") %>'
                        Width="180px" Wrap="False"/>
                    <a href="#">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/calendar.png" /></a>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="DateTextBox"
                        PopupButtonID="Image1">
                    </asp:CalendarExtender>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DateTextBox"
                        Display="Dynamic" ErrorMessage="Wprowadź poprawną datę." MaximumValue="2100-12-30"
                        MinimumValue="2000-1-1" CssClass="FailureStyle">
                    </asp:RangeValidator>
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                        Text="Zapisz" />
                    &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" Text="Anuluj" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Tytuł<br />
                    <asp:TextBox ID="TitleTextBox" runat="server" Height="20px" Text='<%# Bind("Title") %>'
                        Width="300px" Wrap="False" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TitleTextBox"
                        Display="Dynamic" ErrorMessage="Tytuł jest wymagany." CssClass="UpdateControl">
                    </asp:RequiredFieldValidator>
                    <br />
                    Treść<br />
                    <asp:TextBox ID="MessageTextBox" runat="server" Height="100px" Text='<%# Bind("Message") %>'
                        Width="470px" Wrap="True" TextMode="MultiLine" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="MessageTextBox"
                        Display="Dynamic" ErrorMessage="Treść jest wymagana." CssClass="FailureStyle">
                    </asp:RequiredFieldValidator>
                    <br />
                    Data<br />
                    <asp:TextBox ID="DateTextBox" runat="server" Height="20px" Text='<%# Bind("Date") %>'
                        Width="180px" Wrap="False"/>
                    <a href="#">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/calendar.png" /></a>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="DateTextBox"
                        PopupButtonID="Image1">
                    </asp:CalendarExtender>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DateTextBox"
                        Display="Dynamic" ErrorMessage="Wprowadź poprawną datę." MaximumValue="2100-12-30"
                        MinimumValue="2000-1-1" CssClass="FailureStyle">
                    </asp:RangeValidator>
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
