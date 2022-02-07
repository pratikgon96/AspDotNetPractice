<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="WebForm.RegistrationForm" %>
<%--<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" tagPrefix="ajax" %> --%>
<%@ Register Src="~/Help.ascx" TagPrefix="uc1" TagName="Help" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script>
        $(document).ready(function () {
            /*$("#dialog").hide();*/
            $("#Button1").click(function () {
                $("#dialog").toggle();
            });
            $("#btnClose").click(function () {
                $("#dialog").hide();
            });
        });
    </script>
     
        <style type="text/css">  
        .web_dialog  
        {  
            display: none;  
            position: fixed;  
            width: 250px;  
            height: 115px;  
            top: 50%;  
            left: 50%;  
            margin-left: -190px;  
            margin-top: -100px;  
            background-color: #ffffff;  
            border: 2px solid #336699;  
            padding: 0px;  
            z-index: 102;  
            font-family: Verdana;  
            font-size: 10pt;  
        }

            .style1 {  
                width: 263px;
                font:bold;
            }  
              
            .style2 {  
                width: 251px;  
            } 
        </style>  

    <script>

    </script>
    </head>   
<body>
    
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <h1 style="font:bolder">Registration Form</h1>
    <asp:Label ID="Message" runat="server"></asp:Label>
    <form id="form1" runat="server">  
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <div class="container">
            <table class="auto-style1">
                <tr>  
                    <td style="font:bolder">Name:</td>  
                    <td> 
                        
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" BorderColor="SkyBlue"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtName" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtName" ErrorMessage="Name should contain only alphabets!" ForeColor="Red" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                        <br />
                    </td>  
  
               </tr> 
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                <tr>  
                    
                            <td class="style1">Email:</td>  
                    <td> 
                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" BorderColor="SkyBlue" AutoPostBack="true" OnTextChanged="CheckUserEmailAvailability"></asp:TextBox>
                        <td>  
                            <div id="checkem" runat="server"  Visible="false">  
                            <asp:Image ID="shwimg" runat="server" Width="17px" Height="17px"/>  
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            </div>  
                        </td>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="txtMail" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                    
                </tr>
                </ContentTemplate>
                </asp:UpdatePanel>

                <%--<tr>  
                    <br />
                    <td class="style1">Address: </td>
                    
                    <td class="style2">  
                        <asp:TextBox ID="txtAdd" runat="server" TextMode="MultiLine" CssClass="form-control" BorderColor="SkyBlue"></asp:TextBox> 
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtAge" MaximumValue="30" Type="String" ErrorMessage="Address should not exceed 30 characters!" ForeColor="Red"></asp:RangeValidator>
                        <br />
                    </td>  
                </tr>--%>

                <tr>  
                    <td class="style1">Password:</td>  
                    <td class="style2"> <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" BorderColor="SkyBlue"></asp:TextBox> 
                     <br />
                    </td>
                    <td>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtPassword" ClientValidationFunction="ClientValidate" OnServerValidate="UserCustomValidate" ErrorMessage="Password should have atleast a capital, small and digit and should be greater than 5 and less than 12" ForeColor="Red" Display="Static"></asp:CustomValidator>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="txtPassword" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfPassword" ErrorMessage="Password and confirm password must be same" ForeColor="Red" Operator="Equal"></asp:CompareValidator>  
                       
                    </td>
                     <br />
                </tr>  
                <tr>  
                    <td class="style1">Confirm Password:</td>  
                    <td class="style2">  
                        <asp:TextBox ID="txtConfPassword" runat="server" TextMode="Password" CssClass="form-control" BorderColor="SkyBlue"></asp:TextBox> 
                        <br />
                    </td>  
                </tr>
                <tr>  
                    <td class="style1">Contact Number: </td>  
                    <td class="style2">  
                        <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" BorderColor="SkyBlue"></asp:TextBox>  
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Contact Number cannot be blank" ControlToValidate="txtNumber" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNumber" ErrorMessage="Mobile number must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>  
                        <br />  
                    </td>  
                </tr> 
                <tr>  
                    <td>Department</td>  
                    <td>  
                        <asp:RadioButtonList ID="selectDep" runat="server">  
                            <asp:ListItem>CSE</asp:ListItem>  
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>ECE</asp:ListItem>
                            <asp:ListItem>EE</asp:ListItem>
                            <asp:ListItem>ME</asp:ListItem>
                        </asp:RadioButtonList> 
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Department should be selected" ControlToValidate="selectDep" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <br />
                    </td>  
               </tr>  
                <tr>  
                    <td class="style1">Age:</td>  
                    <td class="style2">  
                        <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" BorderColor="SkyBlue"></asp:TextBox> 
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" MaximumValue="28" MinimumValue="18" Type="Integer" ErrorMessage="Age should be and Integer type and should be in between 18 to 28" ForeColor="Red"></asp:RangeValidator>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Age should not be null" ControlToValidate="txtAge" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </td>  
                </tr> 
                <tr>  
                    <td class="style1">Gender</td>  
                    <td class="style2">  
                        <asp:RadioButtonList ID="selectGender" runat="server">  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem> 
                        </asp:RadioButtonList> 
                        <br />
                    </td>  
               </tr>    
                <tr> 
                    
                    <td>  
                        <asp:Button ID="Button1" Class="btn btn-primary btn-lg" runat="server" Text="Submit" OnClientClick="return false;"/>
                    </td>  
                </tr>  
            </table> 
            
            <%--<div id="output"></div>  
            <div id="overlay" class="web_dialog_overlay"></div>--%>  
         <div id="dialog" class="web_dialog">  
            <table style="width: 100%; border: 0px;" cellpadding="3" cellspacing="0">    
                <tr>  
                    <td colspan="2" style="padding-left: 15px;"><b>Do You want to submit this form? </b></td>  
                </tr>
              
                 <tr>  
                     <td class="style1">  
                            <asp:Label ID="Label1" runat="server"></asp:Label>  
                        </td>
                    <td  style="text-align: center;"><asp:Button Text="Submit" runat="server" ID="btnSubmit" CssClass="btn btn-success btn-sm" OnClick="btnSubmit_Click"/></td>  
                    <td  style="text-align: center;"><asp:Button Text="Cancel" runat="server" ID="btnClose" CssClass="btn btn-danger btn-sm" OnClientClick="return false;"/></td>  
                </tr>  
             </table>  
         </div>
            
        </div>
        <br />
        <br />
        <div>
            <uc1:Help runat="server" id="Help1" />
        </div>
    </form> 
</body>  
</html>

<script language="javascript"> 
    function ClientValidate(source, arguments) {
        let str = arguments.Value;
        arguments.IsValid = false;
        //checking for input length greater than 6 and less than 12 characters  
        if (str.length < 6 || str.length > 12) {
            return;
        }
        //checking for a atleast a single capital letter  
        let capital = false;
        for (let i = 0; i <= str.length; i++)
        {
            if (str[i] >= 'A' && str[i] <= 'Z') {
                capital = true;
                break;
            }
        }
        if (!capital) {
            return;
        }
        //checking for a atleast a single lower letter  
        let lower = false;
        for (let i = 0; i <= str.length; i++)
        {
            if (str[i] >= 'a' && str[i] <= 'z') {
                lower = true;
                break;
            }
        }
        if (!lower) {
            return;
        }
        let digit = false;
        for(let i = 0; i <= str.length; i++)
        {
            if (str[i] >= '0' && str[i] <= '9') {
                digit = true;
                break;
            }
        }
        if (!digit) {
            return;
        }
        arguments.IsValid = true;
    }
</script>
