<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeFile="ChangeCourse.aspx.cs" Inherits="Admin_Courses_ChangeCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
    <article>
        <h2>
         <%= heading %> </h2>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>" 
                InsertCommand="Courses_Ins" InsertCommandType="StoredProcedure" 
                SelectCommand="Course_Sel_ByCourseID" SelectCommandType="StoredProcedure" 
                UpdateCommand="Courses_Upd" UpdateCommandType="StoredProcedure">
                <InsertParameters>
                    <asp:Parameter Name="courseName" Type="String" />
                    <asp:ControlParameter Name="sex" ControlID="FormView1$SexList" 
                        PropertyName="SelectedValue" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="courseID" QueryStringField="courseID" 
                        Type="Empty" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="courseID" Type="Empty" />
                    <asp:Parameter Name="courseName" Type="String" />
                    <asp:ControlParameter Name="sex" ControlID="FormView1$SexList" 
                        PropertyName="SelectedValue" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>            
            <asp:FormView ID="FormView1" runat="server" CssClass="UpdateControl" ue
                DataKeyNames="CourseID" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
                CellPadding="0" CellSpacing="5" Width="480px" 
                onitemcommand="FormView1_ItemCommand" 
                oniteminserted="FormView1_ItemInserted" 
                onitemupdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    Nazwa kursu: 
                    <asp:TextBox ID="CourseNameTextBox" runat="server" Height="20px" 
                        Text='<%# Bind("CourseName") %>' Width="200px" Wrap="False" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="CourseNameTextBox" Display="Dynamic" 
                        ErrorMessage="Nazwa kursu jest wymagana." CssClass="FailureStyle">
                    </asp:RequiredFieldValidator>
                    <br />
                    Płeć: 
                    <asp:DropDownList ID="SexList" runat="server" Width="150px" 
                        SelectedValue='<%# Bind("Sex") %>'>
                        <asp:ListItem Value="m">Mężczyzna</asp:ListItem>
                        <asp:ListItem Value="f">Kobieta</asp:ListItem>
                        <asp:ListItem Value="b">Dowolna</asp:ListItem>
                    </asp:DropDownList>
                    <br /><br />                      
                    <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Zapisz" />
                    &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Nazwa kursu: 
                    <asp:TextBox ID="CourseNameTextBox" runat="server" Height="20px" 
                        Text='<%# Bind("CourseName") %>' Width="200px" Wrap="False" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="CourseNameTextBox" Display="Dynamic" 
                        ErrorMessage="Nazwa kursu jest wymagana." CssClass="FailureStyle">
                    </asp:RequiredFieldValidator>
                    <br />
                    Płeć: 
                    <asp:DropDownList ID="SexList" runat="server" Width="150px">
                        <asp:ListItem Value="m">Mężczyzna</asp:ListItem>
                        <asp:ListItem Value="f">Kobieta</asp:ListItem>
                        <asp:ListItem Selected="True" Value="b">Dowolna</asp:ListItem>
                    </asp:DropDownList>
                    <br /><br />                               
                    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Dodaj" />
                    &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Anuluj" />
                </InsertItemTemplate>
            </asp:FormView>
            <br />
        </p>
    </article>
</asp:Content>

