<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="InstrInQual.aspx.cs" Inherits="Admin_Qual_InstrInQual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            Przeglądaj kwalifikacje prowadzących</h2>
        <p>
            Wybierz prowadzącego:
            <asp:DropDownList ID="instr" runat="server" Width="150px" AutoPostBack="True" DataSourceID="SqlDataSource2"
                DataTextField="Column1" DataValueField="InstructorID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Qual_Sel_DistInstr" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="instr" Name="userID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Instructors_Sel_AllID" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="InstrInQual_Sel_All" SelectCommandType="StoredProcedure" DeleteCommand="InstrInQual_Del"
                DeleteCommandType="StoredProcedure" InsertCommand="InstrInQual_Ins" InsertCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="qualificationID" Type="Empty" />
                    <asp:Parameter Name="instructorID" Type="Empty" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="FormView1$qual" Name="qualificationID" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="instr" Name="userID" PropertyName="SelectedValue" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="instr" Name="instructorID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Brak kwalifikacji do wyświetlenia."
                CssClass="GridViewStyle" GridLines="Vertical" Width="500px" DataKeyNames="InstructorID,QualificationID">
                <Columns>
                    <asp:BoundField DataField="InstructorID" HeaderText="InstructorID" SortExpression="InstructorID"
                        ReadOnly="True" Visible="false" />
                    <asp:BoundField DataField="Name" HeaderText="Imię" SortExpression="Name" />
                    <asp:BoundField DataField="Surname" HeaderText="Nazwisko" SortExpression="Surname" />
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
            Aby dodać kwalifikację do prowadzącego wypełnij poniższy formularz:
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert"
                DataKeyNames="InstructorID,QualificationID">
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
