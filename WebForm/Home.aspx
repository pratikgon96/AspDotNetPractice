<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebForm.Home" %>

<!DOCTYPE html>

    <h1>WelCome User</h1>
<body>
    <h4>Here is your Details!</h4>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <label>ID: </label>
                    </td>
                    <td>
                        <asp:TextBox ID ="txtId" runat="server" Text="txtId.Text" ReadOnly></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>NAME: </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Text="txtName.Text" ReadOnly></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>CITY: </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server" Text="txtCity.Text" ReadOnly></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>