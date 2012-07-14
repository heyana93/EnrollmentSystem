<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="Generate.aspx.cs" Inherits="Admin_Terms_Generate" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            Generowanie terminu zapisów</h2>
        <p>
            Liczba wszystkich studentów w bazie:
            <asp:Label ID="studNum" runat="server" Text=""></asp:Label><br />
            Odstępy pomiędzy zapisami kolejnych grup studentów:&nbsp;
            <asp:TextBox ID="time" runat="server" Width="50" Text="1" AutoPostBack="True" OnTextChanged="time_TextChanged"></asp:TextBox>&nbsp;min<br />
            Optymalny odstęp dla zapisów to 1-2 min.<br />
            Liczba studentów w grupie zapisywanych:&nbsp;
            <asp:TextBox ID="group" runat="server" Width="50" Text="4"></asp:TextBox><br />
            <br />
            Ustaw datę i godzinę zapisów:<br />
            Rozpoczęcie:
            <asp:TextBox ID="start" runat="server" Width="80"></asp:TextBox>
            <a href="#">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/calendar.png" /></a>
            &nbsp;<asp:DropDownList ID="startTime" runat="server" Width="60">
            </asp:DropDownList>
            <asp:ScriptManager ID="ScriptManager1" EnableScriptGlobalization="true" runat="server">
            </asp:ScriptManager>
            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="start"
                PopupButtonID="Image1">
            </asp:CalendarExtender>            
            <br />
            Zakończenie:
            <asp:TextBox ID="stop" runat="server" Width="80"></asp:TextBox>
            <a href="#">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/calendar.png" /></a>&nbsp;
            <asp:DropDownList ID="stopTime" runat="server" Width="60">
            </asp:DropDownList>
            <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="stop"
                PopupButtonID="Image2">
            </asp:CalendarExtender>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Data rozpoczęcia jest wymagana." 
                ControlToValidate="start" Display="Dynamic" CssClass="FailureStyle"></asp:RequiredFieldValidator>
            <br />
            Aby wygenerowac czas zapisów kliknij przycisk&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Generuj" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Terminy zapisów zostały wygenerowane poprawnie!"
                Visible="false" Font-Bold="True"></asp:Label>
        </p>
    </article>
</asp:Content>
