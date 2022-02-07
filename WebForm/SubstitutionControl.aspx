<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubstitutionControl.aspx.cs" Inherits="WebForm.SubstitutionControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">  
    <center>  
        <div>  
            <table>  
                <tr>  
                    <td colspan="2" align="center">  
                        <asp:Label ID="Label1" runat="server" Text="Addition of Two Number" Font-Bold="true"  
                            Font-Size="Large" ForeColor="Maroon"></asp:Label>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Label ID="Label6" runat="server" Text="Please Enter FirstNumber" Font-Size="Large"  
                             Font-Italic="true"></asp:Label>  
                    </td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Label ID="Label2" runat="server" Text="Please Enter SecondNumber" Font-Size="Large" Font-Italic="true"></asp:Label>  
                    </td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td colspan="2" align="center">  
                        <asp:Button ID="Button1" runat="server" Text="Addition" Font-Names="Verdana" Width="213px"  
                            BackColor="BlueViolet" Font-Bold="True" OnClick="Button1_Click" />  
                    </td>  
                </tr>  
                <tr>  
                    <td colspan="2" align="center">  
                        <asp:Substitution ID="Substitution1" runat="server" MethodName="Add" />  
                    </td>  
                </tr>  
                <tr>  
                    <td colspan="2" align="center">  
                        <asp:Label ID="Label5" runat="server" Font-Bold="true" Font-Names="Verdana"></asp:Label>  
                    </td>  
                </tr>  
            </table>  
        </div>  
    </center>  
    </form> 
</body>
</html>
