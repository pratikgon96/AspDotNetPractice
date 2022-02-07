<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JavaScriptValidation.aspx.cs" Inherits="WebForm.JavaScriptValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script>
        function Allvalidate() {
            var ValidationSummary = "";
            ValidationSummary += NameValidation();
            ValidationSummary += EmailValidation();
            ValidationSummary += PhonenoValidation();
            ValidationSummary += PasswordValidation();
            ValidationSummary += ConfirmPasswordValidation();
            if (ValidationSummary != "") {
                alert(ValidationSummary);
                return false;
            }
            else {
                alert("Information submited successfuly");
                return true;
            }
        }

        function PasswordValidation() {
            var userid = document.getElementById("<%=txtPassword.ClientID %>").value;
            var val = PasswordStructure(userid);
            if (userid == "") {
                return ("Please Enter Password!" + "\n");
            }
            else if (userid.length < 8 || userid.length > 15) {
                return ("Password Length must be in between 8 to 15!" + "\n");
            } else if (!val) {
                return ("Password must contain atleast one numeric, one uppercase and one lowercase character");
            }
            else {
                return "";
            }
            
        }

        function ConfirmPasswordValidation() {
            var userid1 = document.getElementById("<%=txtPassword.ClientID %>").value;
            var userid2 = document.getElementById("<%=txtConfPassword.ClientID %>").value;
            if (userid1 == userid2) {
                return "";
            } else if (document.forms["form1"]["txtConfPassword"] == "") {
                return ("Please Enter Confirm Password");
            }
            else {
                return ("Password and Confirm password should be matched!");
            }
        }

        function PasswordStructure(val) {
            var isCorrect = false;
            var arrUp = [];
            var arrLow = [];
            var arrNum = [];
            console.log(val);
            for (var i = 0; i < val.length; i++) {
                if (val[i] >= 'A' && val[i] <= 'Z') {
                    arrUp.push(val[i]);
                    console.log("Enter into upper" + val[i] + ":" + arrUp.length)
                }
                else if (val[i] >= 'a' && val[i] <= 'z') {
                    arrLow.push(val[i]);
                    console.log("Enter into lower" + val[i] + ":" + arrLow.length)
                }
                else if (val[i] >= 0 && val[i] <= 9) {
                    arrNum.push(val[i]);
                    console.log("Enter into num" + val[i] + ":" + arrNum.length)
                }
            }

            if (arrUp.length > 0 && arrNum.length > 0 && arrLow.length > 0) {
                isCorrect = true;
            }
            console.log(isCorrect);
            return isCorrect;
        }

        function PhonenoValidation() {
            var userid;
            var controlId = document.getElementById("<%=txtcontct.ClientID %>");
            userid = controlId.value;
            var val = /^[0-9]+$/;
            var digits = /\d(10)/;
            if (userid == "") {
                return ("Please Enter PhoneNo" + "\n");
            }
            else if (val.test(userid)) {
                return "";
            }

            else {
                return ("PhoneNo should be only in digits and of 10 digits" + "\n");
            }
        }
        function NameValidation() {
            var userid;
            var controlId = document.getElementById("<%=txtname.ClientID %>");
            userid = controlId.value;
            var val = /^[a-zA-Z ]+$/
            if (document.forms["form1"]["txtname"].value == "") {
                return ("Please Enter Name" + "\n");
            }
            else if (val.test(userid)) {
                return "";

            }
            else {
                return ("Name accepts only spaces and charcters" + "\n");
            }
        }

        function EmailValidation() {
            var userid;
            var controlId = document.getElementById("<%=txtemail.ClientID %>");
            userid = controlId.value;
            var val = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
            if (userid == "") {
                return ("Please Enter Email Id" + "\n");
            }
            else if (val.test(userid)) {
                return "";
            }

            else {
                return ("Email should be in this form example: xyz@abc.com" + "\n");
            }
        }

        document.getElementById("<%=form1.ClientID %>").addEventListener("submit", alertBox);
        function alertBox() {
            alert("Your form has been submitted!");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h3 style="color: blue">Validation in JavaScript</h3>
        <table style="border-color: #333300; z-index: 1; left: 15px; top: 54px; position: absolute; height: 122px; width: 261px">
            <tr>
                <td>
                    <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCntno" runat="server" Text="Phone No"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcontct" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>

                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>

                <td>
                    <asp:Label ID="lblConfPassword" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtConfPassword" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="bttnsubmit" runat="server" Text="Submit"
                        OnClientClick="javascript:Allvalidate()" Font-Bold="True" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
