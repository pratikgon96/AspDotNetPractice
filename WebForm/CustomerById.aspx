<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerById.aspx.cs" Inherits="WebForm.CustomerById" %>

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
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/Demo.asmx" />
            </Services>
        </asp:ScriptManager>
        <table style="font-family: Arial">
            <tr>
                <td>
                    <b>Customer Id</b>
                </td>
                <td>
                    <asp:TextBox ID="txtId" runat="server" BorderColor="SkyBlue"></asp:TextBox>
                    <input id="Button1" type="button" value="Get Customer" onclick="GetCustomerById()" />
                </td>
                <td>
                     <br />
                     <br />
                </td>
            </tr>

            <tr>
                <td>
                    <b>Customer Name</b>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" BorderColor="SkyBlue"></asp:TextBox>
                    <br />
                </td>
                <td>
                     <br />
                     <br />
                </td>
                
            </tr>
            <tr>
                <td>
                    <b>Customer Contact</b>
                </td>
                <td>
                    <asp:TextBox ID="txtContact" runat="server" BorderColor="SkyBlue"></asp:TextBox>
                </td>
                <td>
                     <br />
                     <br />
                </td>
            </tr>

            <tr>
                <td>
                    <b>Customer DOB</b>
                </td>
                <td>
                    <asp:TextBox ID="txtDob" runat="server" BorderColor="SkyBlue"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

<script language="javascript" type="text/javascript">
    function GetCustomerById() {
        var id = $('#txtId').val();
        console.log(id);
        WebForm.Demo.GetCustomerById(id, GetCustomerByIdSuccess, GetCustomerByIdFailed);

    }

    function GetCustomerByIdSuccess(results) {
        $('#txtName').val(results["Name"]);
        $('#txtContact').val(results["Contact"]);
        $('#txtDob').val(results["DOB"]);
        //document.getElementById("txtName").val() = results["Name"];
        //document.getElementById("txtContact").val() = results["Contact"];
        //document.getElementById("txtDob").val() = results["DOB"];

    }
    function GetCustomerByIdFailed(errors) {
        alert(errors.get_message());
    }
</script>
