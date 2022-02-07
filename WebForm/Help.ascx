<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Help.ascx.cs" Inherits="WebForm.Help" %>


<table>  
    <tr>  
        <td>  
            <asp:Label ID="lblMessage" runat="server" Text="Selected Row: "></asp:Label>   
        </td>  
    </tr>  
    <tr>  
        <td>  
            <asp:Label ID="lblName" runat="server" Text="Selected Name"></asp:Label>  
        </td>  
        <td>  
            <asp:TextBox ID="txtName" runat="server" ReadOnly="true"></asp:TextBox>  
        </td>  
    </tr>  
    <tr>  
        <td>  
            <asp:Label ID="lblEmail" runat="server" Text="Selected Email"></asp:Label>  
        </td>  
        <td>  
            <asp:TextBox ID="txtEmail" runat="server" ReadOnly="true"></asp:TextBox>  
        </td>  
    </tr>

    <tr>  
        <td>  
            <asp:Label ID="lblContact" runat="server" Text="Selected Contact: "></asp:Label>  
        </td>  
        <td>  
            <asp:TextBox ID="txtContact" runat="server" ReadOnly="true"></asp:TextBox>  
        </td>  
    </tr>
  
    <tr>  
        <td>  
            <asp:Label ID="lblDepartment" runat="server" Text="Selected Department: "></asp:Label>  
        </td>  
        <td>  
            <asp:TextBox ID="txtDept" runat="server" ReadOnly="true"></asp:TextBox>  
        </td>  
    </tr>

    <tr>  
        <td>  
            <asp:Label ID="lblAge" runat="server" Text="Selected Age: "></asp:Label>  
        </td>  
        <td>  
            <asp:TextBox ID="txtAge" runat="server" ReadOnly="true"></asp:TextBox>  
        </td>  
    </tr>
</table>  
