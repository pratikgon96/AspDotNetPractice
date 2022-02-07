<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadTxt.aspx.cs" Inherits="WebForm.UploadTxt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload CssClass="btn btn-primary" id="FileUpLoad1" runat="server" />
        </div>
        <div>
            <asp:RegularExpressionValidator
                ID="FileUpLoadValidator" runat="server"
                ErrorMessage="Upload Text file only."
                ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.txt|.doc|.docx)$"
                ControlToValidate="FileUpload1">  
            </asp:RegularExpressionValidator> 
        </div>

        <div>
            <asp:Button CssClass="btn btn-success" id="UploadBtn" Text="Upload File" OnClick="UploadBtn_Click" runat="server" Width="105px" />
        </div>
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
