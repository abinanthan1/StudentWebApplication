<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pagination.aspx.cs" Inherits="StudentWebApplication.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding: 30px">


        <table class="w-100">
            <tr>
                <td colspan="2" style="font-size: x-large; font-weight: bold; color: #000000; height: 40px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CRUD OPERATION</td>
            </tr>
            <tr>
                <td style="width: 153px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 153px; height: 34px;">
                    <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="ClientID"></asp:Label>
                    :</td>
                <td style="height: 34px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    &nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td style="width: 153px; height: 32px;">
                    <asp:Label ID="Label2" runat="server" Text="ClientName"></asp:Label>
                    :</td>
                <td style="height: 32px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 12px; width: 153px">
                    <asp:Label ID="Label3" runat="server" Text="ClientCity"></asp:Label>
                    :</td>
                <td style="height: 12px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                        <asp:ListItem>New york</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>United Kingdom</asp:ListItem>
                        <asp:ListItem>Africa</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 153px; height: 29px">
                    <asp:Label ID="Label4" runat="server" Text="ClientNumber"></asp:Label>
                    :</td>
                <td style="height: 29px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 153px; height: 33px;">
                    <asp:Label ID="Label5" runat="server" Text="ClientEmail"></asp:Label>
                    :</td>
                <td style="height: 33px">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 153px">
                    <br />
                </td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" OnClientClick="return con" Text="Register" Width="100px" OnClick="Button1_Click" />
                    &nbsp;&nbsp;<br />
                </td>
            </tr>
            <tr>
                <td style="width: 153px; height: 26px;">
                    <br />
                </td>
                <td style="height: 26px">
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" BorderStyle="Solid" Height="206px" HorizontalAlign="Center" ShowFooter="True" Width="1069px" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" ForeColor="Black" PageSize="5" Style="margin-right: 9px" GridLines="Vertical" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSorting="GridView1_Sorting" OnPageIndexChanging="GridView1_PageIndexChanging" DataKeyNames="ClientID" >
                        <AlternatingRowStyle BackColor="#CCCCCC" />

                        <Columns>
                            <asp:BoundField DataField="ClientID" HeaderText="Client ID" ReadOnly="True" SortExpression="ClientID" />
                            <asp:BoundField DataField="ClientName" HeaderText="Client Name" SortExpression="ClientName" />
                            <asp:BoundField DataField="ClientCity" HeaderText="Client City" SortExpression="ClientCity" />
                            <asp:BoundField DataField="ClientNumber" HeaderText="Client Number" SortExpression="ClientNumber" />
                            <asp:BoundField DataField="ClientEmail" HeaderText="Client Email" SortExpression="ClientEmail" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                            <ControlStyle BackColor="#006600" ForeColor="White" />
                            </asp:CommandField>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                            <ControlStyle BackColor="Red" ForeColor="White" />
                            </asp:CommandField>
                        </Columns>

                        <EmptyDataRowStyle BorderColor="Black" />
                        <FooterStyle BorderColor="Black" BorderStyle="Dotted" BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" BorderColor="Black" BorderStyle="Dotted" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BorderColor="Black" BorderStyle="Dotted" BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BorderColor="Black" BorderStyle="Dotted" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <br />
                </td>
            </tr>
        </table>


        <br />


    </div>


</asp:Content>
