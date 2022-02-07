<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NavigationControl.aspx.cs" Inherits="WebForm.NavigationControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table bgcolor="#ffccff">
                <tr>
                    <td>
                        <asp:TreeView ID="TreeView1" runat="server" Height="189px" ImageSet="Simple" Width="162px"
                            NodeIndent="10">
                            <ParentNodeStyle Font-Bold="False" />
                            <HoverNodeStyle Font-Underline="True" ForeColor="#DD5555" />
                            <SelectedNodeStyle Font-Underline="True" ForeColor="#DD5555" HorizontalPadding="0px"
                                VerticalPadding="0px" />
                            <Nodes>
                                <asp:TreeNode Text="Employee" Value="Employee">
                                    <asp:TreeNode Text="Emp_Name" Value="Emp_Name">
                                        <asp:TreeNode Text="First Name" Value="First Name"></asp:TreeNode>
                                        <asp:TreeNode Text="Last Name" Value="Last Name"></asp:TreeNode>
                                    </asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode Text="Emp_Address" Value="Emp_Address">
                                    <asp:TreeNode Text="Local" Value="Local"></asp:TreeNode>
                                    <asp:TreeNode Text="Permanent" Value="Permanent"></asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode Text="Emp_Contact no." Value="Emp_Contact no.">
                                    <asp:TreeNode Text="Home" Value="Home"></asp:TreeNode>
                                    <asp:TreeNode Text="Office" Value="Office"></asp:TreeNode>
                                </asp:TreeNode>
                            </Nodes>
                            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="0px"
                                NodeSpacing="0px" VerticalPadding="0px" />
                        </asp:TreeView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
