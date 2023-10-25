<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentWebApplication.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    &nbsp;&nbsp;&nbsp;
    <div style="padding: 30PX">
        <table class="w-100">
            <tr>
                <td colspan="2" style="font-size: x-large; font-weight: bold; color: #000000; height: 36px;">LOGIN PAGE</td>
            </tr>
            <tr>
                <td style="width: 135px; height: 25px;"></td>
                <td style="height: 25px"></td>
            </tr>
            <tr>
                <td style="width: 135px; height: 42px;">
                    <asp:Label ID="Label2" runat="server" Text="Email" ToolTip="Enter Email"></asp:Label>
                    :</td>
                <td style="height: 42px">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" ToolTip="Enter valid Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Email Address" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 135px">
                    <asp:Label ID="Label3" runat="server" Text="Password" ToolTip="Enter password"></asp:Label>
                    :</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ToolTip="Enter password" CssClass="accordion-header"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Correct password" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 135px">
                    <br />
                    <asp:HyperLink ID="NewUserLink" runat="server" Text="New User? Register here" NavigateUrl="~/RegisterPage.aspx" />

                </td>
                <td>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Login" BackColor="Black" ForeColor="White" Width="162px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 135px">
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 135px">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forget password</asp:LinkButton>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Login with Google" BackColor="Black" ForeColor="White" Width="163px" OnClick="Button3_Click" />
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>
