<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="StudentWebApplication.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding:30px">
    <table class="w-100">
        <tr>
            <td colspan="2" style="font-size: x-large; font-weight: bold; color: #000000">REGISTER PAGE</td>
        </tr>
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 24px; width: 157px">
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                :</td>
            <td style="height: 24px">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name can't be empty" ControlToValidate="TextBox1" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 157px">
        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                :</td>
            <td style="height: 36px">
        <asp:TextBox ID="Textpassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textpassword" ErrorMessage="Password can't be blank" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 27px; width: 157px">
          <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                :</td>
            <td style="height: 27px">
        <asp:TextBox ID="TextConform" runat="server" TextMode="Password" ValidateRequestMode="Enabled"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Textpassword" ControlToValidate="TextConform" ErrorMessage="Password Mismatched" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 157px; height: 53px;">
        <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                :</td>
            <td style="height: 53px">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="height: 29px; width: 157px">
        <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
                :</td>
            <td style="height: 29px"><asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="167px">
            <asp:ListItem>Erode</asp:ListItem>
            <asp:ListItem>Coimbatore</asp:ListItem>
            <asp:ListItem>Chennai</asp:ListItem>
        </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 157px">
        <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
                :</td>
            <td>
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter valid email" ControlToValidate="TextBox4" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td>
        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Black" ForeColor="White" OnClientClick="return confirm('Are you sure to Submit?');" Width="100px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 157px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
        </div>
</asp:Content>
