<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimeControl.aspx.cs" Inherits="WebForm.TimeControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional"
            ViewStateMode="Enabled">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Font-Size="14pt">Pic1</asp:Label>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/imgfolder/pic1.jpg" Width="200px" />
             </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
            </asp:UpdatePanel>
            <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
            </asp:Timer>
        </div>
    </form>
</body>
</html>
