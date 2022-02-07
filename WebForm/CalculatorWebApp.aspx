<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalculatorWebApp.aspx.cs" Inherits="WebForm.CalculatorWebApp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <table style="font-family: Arial">
            <tr>
                <td>
                    <b>First Number</b>
                </td>
                <td>
                    <asp:TextBox ID="txtFirst" runat="server" BorderColor="SkyBlue"></asp:TextBox>
                </td>
                <td>
                     <br />
                     <br />
                </td>
            </tr>

            <tr>
                <td>
                    <b>Second Number</b>
                </td>
                <td>
                    <asp:TextBox ID="txtSecond" runat="server" BorderColor="SkyBlue"></asp:TextBox>
                    <br />
                </td>
                <td>
                     <br />
                     <br />
                </td>
                
            </tr>
            <tr>
                <td>
                    <b>Select Operation</b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="">Please Select</asp:ListItem>
                        <asp:ListItem Value="Add">Add</asp:ListItem>
                        <asp:ListItem Value="Sub">Sub</asp:ListItem>
                        <asp:ListItem Value="Mul">Mul</asp:ListItem>
                        <asp:ListItem Value="Div">Div</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                     <br />
                     <br />
                </td>
            </tr>

            <tr>
                <td>
                    <b>Result</b>
                </td>
                <td>
                    <asp:Label ID="lbl1" runat="server"></asp:Label>

                </td>
                <td>
                     <br />
                     <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btn1" runat="server" CssClass="btn btn-success" Text="Calculate" OnClick="btn1_Click"/>
                </td>
                <td>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td>
                    <asp:GridView ID="gridView1" runat="server"></asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
