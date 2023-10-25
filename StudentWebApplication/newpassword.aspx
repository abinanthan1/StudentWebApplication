<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newpassword.aspx.cs" Inherits="StudentWebApplication.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div style="padding: 30px">
          <table class="w-100">
              <tr>
                  <td style="font-size: x-large; font-weight: bold; color: #000000; width: 413px;">Change new password</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td style="width: 413px">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td style="width: 413px">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td style="width: 413px">
                      <asp:Label ID="Label2" runat="server" Text="Enter new password"></asp:Label>
                      :</td>
                  <td>
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td style="width: 413px; height: 26px"></td>
                  <td style="height: 26px"></td>
              </tr>
              <tr>
                  <td style="width: 413px">
                      <asp:Label ID="Label3" runat="server" Text="Confirm new password"></asp:Label>
                      :</td>
                  <td>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td style="width: 413px"></td>
                  <td></td>
              </tr>
              <tr>
                  <td style="height: 26px; width: 413px"></td>
                  <td style="height: 26px">
                      <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" OnClick="Button1_Click" Text="Rest" Width="95px" />
                  </td>
              </tr>
              <tr>
                  <td style="width: 413px">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>
          </div>
</asp:Content>
