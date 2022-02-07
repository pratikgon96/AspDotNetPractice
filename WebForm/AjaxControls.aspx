<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxControls.aspx.cs" Inherits="WebForm.AjaxControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>date: 31/01/2022</h1>
    <form id="form1" runat="server">
   <div>
      <asp:ScriptManager ID="ScriptManager1" runat="server" />
   </div>
   
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
         <asp:Button ID="btnpartial" runat="server" onclick="btnpartial_Click" Text="Partial PostBack"/>
         <br />
         <br />
         <asp:Label ID="lblpartial1" runat="server"></asp:Label>
      </ContentTemplate>
   </asp:UpdatePanel>
   <div>
       <asp:UpdateProgress ID="Up1" runat="Server" AssociatedUpdatePanelID="UpdatePanel1">
        <ProgressTemplate>
            <span style="background-color:#66997A;"> <img src="Content/imgfolder/waiting.jpg" alt="Please wait" width="100"/> Please wait ...</span>
        </ProgressTemplate>
       </asp:UpdateProgress>
   </div>
   <p> </p>
   <p>Outside the Update Panel</p>
   <p>
      <asp:Button ID="btntotal" runat="server" onclick="btntotal_Click" Text="Total PostBack" />
   </p>
   
   <asp:Label ID="lbltotal1" runat="server"></asp:Label>
</form>
</body>
</html>
