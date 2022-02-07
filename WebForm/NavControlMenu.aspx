<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NavControlMenu.aspx.cs" Inherits="WebForm.NavControlMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server">
                <DynamicItemTemplate>
                    Audio songs
                    <br />
                    Video songs
                    <br />
                </DynamicItemTemplate>
                <StaticItemTemplate>
                    Songs
                    <br />
                </StaticItemTemplate>
                <Items>
                    <asp:MenuItem Text="Songs" Value="Songs">
                        <asp:MenuItem Text="New Item" Value="New Item"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
    </form>
</body>
</html>
