<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CachingData.aspx.cs" Inherits="WebForm.CachingData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body> 
    <h1 style="font:bolder">Welcome to User Details</h1>
    <form id="form1" runat="server">  
    <table style="width:100%;">  
        <tr>  
            <td>  
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"   
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"   
                    CellPadding="4">
                    <AlternatingRowStyle BackColor="LightSkyBlue"/>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />  
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />  
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />  
                    <RowStyle BackColor="White" ForeColor="#003399" />  
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />  
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />  
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />  
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />  
                    <SortedDescendingHeaderStyle BackColor="#002876" />  
                </asp:GridView>  
            </td>   
        </tr>
    </table> 
        <br />
        <br />
    </form>  
</body>  
</html>
