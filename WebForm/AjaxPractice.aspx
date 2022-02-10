<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxPractice.aspx.cs" Inherits="WebForm.AjaxPractice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajax Post</title>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>
    <script type = "text/javascript">
        function ShowCurrentTime() {
            //var pagePath = window.location.pathname + "/GetCurrentTime";
            //console.log(pagePath);
            var name = $("#<%=txtName.ClientID%>").val();
            console.log(name);
            $.ajax({
                type: "POST",
                url: "AjaxPractice.aspx/GetCurrentTime",
                data: '{name: "' + name.toString() + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (result) {
                    alert(result.d);
                    console.log(response.d);
                },
                error: function (response) {
                    alert(response.d);
                    console.log(response.d);
                }
            });
        }
        //function OnSuccess(response) {
        //    alert(response.d);
        //}
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Your Name :
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <input id="btnGetTime" type="button" value="Show Current Time" onclick="ShowCurrentTime()" />
        </div>
    </form>
</body>
</html>
