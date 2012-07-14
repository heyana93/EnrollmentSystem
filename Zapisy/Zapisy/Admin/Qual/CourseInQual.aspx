<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeFile="CourseInQual.aspx.cs" Inherits="Admin_Qual_CourseInQual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
<article>
        <h2>
            Przeglądaj kwalifikacje dla kursów</h2>
        <p>
            Wybierz kurs:
            <asp:DropDownList ID="course" runat="server" Width="150px" AutoPostBack="True" DataSourceID="SqlDataSource2"
                DataTextField="Column1" DataValueField="CourseID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Qual_Sel_DistCourse" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="course" Name="courseID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Courses_Sel_AllID" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="CourseInQual_Sel_All" SelectCommandType="StoredProcedure" DeleteCommand="CourseInQual_Del"
                DeleteCommandType="StoredProcedure" InsertCommand="CourseInQual_Ins" InsertCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="qualificationID" Type="Empty" />
                    <asp:Parameter Name="courseID" Type="Empty" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="FormView1$qual" Name="qualificationID" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="course" Name="courseID" PropertyName="SelectedValue" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="course" Name="courseID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Brak kwalifikacji do wyświetlenia."
                CssClass="GridViewStyle" GridLines="Vertical" Width="500px" DataKeyNames="CourseID,QualificationID">
                <Columns>
                    <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID"
                        ReadOnly="True" Visible="false" />
                    <asp:BoundField DataField="CourseName" HeaderText="Nazwa" SortExpression="CourseName" />
                    <asp:BoundField DataField="Sex" HeaderText="Płeć" SortExpression="Sex" />
                    <asp:BoundField DataField="QualificationID" HeaderText="QualificationID" ReadOnly="True"
                        SortExpression="QualificationID" Visible="false" />
                    <asp:BoundField DataField="Description" HeaderText="Rodzaj kwalifikacji" SortExpression="Description" />
                    <asp:CommandField ButtonType="Button" DeleteText="Usuń" ShowDeleteButton="True" HeaderText="Opcje" />
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
            <br>
            Aby dodać kwalifikację do kursu wypełnij poniższy formularz:
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert"
                DataKeyNames="CourseID,QualificationID">
                <InsertItemTemplate>
                    <tr>
                        <td>
                            Rodzaj kwalifikacji:
                            <asp:DropDownList ID="qual" runat="server" Width="150px" AutoPostBack="True" DataSourceID="SqlDataSource3"
                                DataTextField="Description" DataValueField="QualificationID">
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            &nbsp;<asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                                Text="Dodaj" />
                        </td>
                    </tr>
                </InsertItemTemplate>
            </asp:FormView>
        </p>
    </article>
</asp:Content>

