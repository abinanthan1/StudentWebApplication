<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Forget password.aspx.cs" Inherits="StudentWebApplication.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 30px">
                  
        <table class="w-100">
            <tr>
                <td colspan="2" style="height: 23px; font-size: x-large; font-weight: bold; color: #000000;">Forgot password</td>
            </tr>
            <tr>
                <td style="width: 105px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 32px; width: 105px">Email :</td>
                <td style="height: 32px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 105px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 25px; width: 105px"></td>
                <td style="height: 25px">
                    <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" OnClick="Button1_Click" Text="Send" Width="89px" />
                </td>
            </tr>
            <tr>
                <td style="width: 105px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 105px; height: 30px">Enter OTP:</td>
                <td style="height: 30px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 105px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 105px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White"  Text="Verify" Width="87px" OnClick="Button2_Click1" />
                </td>
            </tr>
            <tr>
                <td style="width: 105px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
                  
    </div>
</asp:Content>
