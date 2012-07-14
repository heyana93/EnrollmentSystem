<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true"
    CodeFile="MyTerms.aspx.cs" Inherits="Student_Terms_Terms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="Server">
    <article>
        <h2>
            Przegladaj zapisane kursy</h2>
        <div id="message1" runat="server" visible="false" style="background-color: #adff2f;
            text-align: center">
            <br />
            <b>
                <asp:Label ID="m1" runat="server" Text="" Width="400"></asp:Label></b>
            <br />
            <br>
        </div>
        <div id="message2" runat="server" visible="false" style="background-color: #ff0000;
            color: #ffffff; text-align: center">
            <br />
            <b>
                <asp:Label ID="m2" runat="server" Text="" Width="400"></asp:Label></b>
            <br />
            <br />
        </div>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zapisyConnectionString %>"
                SelectCommand="Terms_Sel_ByUserName" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:FormParameter FormField="userName" Name="userName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Brak kursów do wyświetlenia."
                CssClass="GridViewStyle" GridLines="Vertical" DataKeyNames="TermID" Width="630px"
                OnRowEditing="GridView1_RowEditing">
                <Columns>
                    <asp:BoundField DataField="TermID" HeaderText="TermID" ReadOnly="True" SortExpression="TermID"
                        Visible="false" />
                    <asp:BoundField DataField="TermCode" HeaderText="Kod kursu" SortExpression="TermCode"/>
                    <asp:BoundField DataField="CourseName" HeaderText="Nazwa kursu" SortExpression="CourseName" />
                    <asp:BoundField DataField="Column1" HeaderText="Prowadzący" SortExpression="Column1"
                        ReadOnly="True" />
                    <asp:TemplateField HeaderText="Dzień" SortExpression="Day">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Utilities.DayToShortString(Eval("Day").ToString()) %>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Godzina" SortExpression="StartTime">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Utilities.TimeToString(Eval("StartTime"),
                               Eval("FinishTime")) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Classroom" HeaderText="Sala" SortExpression="Classroom" />
                    <asp:BoundField DataField="Building" HeaderText="Budynek" SortExpression="Building" />
                    <asp:TemplateField HeaderText="Z" SortExpression="Vacancies">
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# String.Format("{0}/{1}",
                                Int32.Parse(Eval("MaxMembers").ToString())-Int32.Parse(Eval("Vacancies").ToString()),
                                Eval("MaxMembers")) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" EditText="Wypisz" HeaderText="Opcje" ShowCancelButton="False"
                        ShowEditButton="True" />
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
            Aby przejść do zapisów na kursy kliknij przycisk
            <asp:Button ID="Button1" runat="server" Text="Zapisy" OnClick="Button1_Click" />
        </p>
    </article>
</asp:Content>
