<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataEntryWithMultiView.aspx.cs" Inherits="WebForm.DataEntryWithMultiView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlDetail" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlDetail_SelectedIndexChanged" >  
            <asp:ListItem Text="1.Address Detail" Value ="0" Selected="True" ></asp:ListItem>  
            <asp:ListItem Text="2.Contact Detail" Value ="1"></asp:ListItem>  
            <asp:ListItem Text="3.Education Detail" Value ="2"></asp:ListItem>  
            <asp:ListItem Text="4.Preview & Submit" Value ="3"></asp:ListItem>  
            </asp:DropDownList>  
           <br />  
           <br />  

            <table>  
               <tr>  
                   <td>  
                       Name  
                   </td>  
                   <td>  
                       <asp:TextBox ID="txtName" runat="server"></asp:TextBox>  
                   </td>  
               </tr>  
           </table>  
  
           <br />  
           <br />  

            <asp:MultiView ID="mvEntryForm" runat="server">  
  
            <asp:View ID="vAddressDetail" runat="server">  
              Address  
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>  
                <br />  
                <br />  
              <asp:Button ID="btnNextContactDetail" runat="server" Text="Next" title="Next - Contact Detail" OnClick="btnNextContactDetail_Click"/>  
            </asp:View>  
  
            <asp:View ID="vContactDetail" runat="server">  
                 Mobile Number  <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>  
                <br />  
                Email ID  <asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>  
              <br />  
              <br />  
              <asp:Button ID="btnPrevAddressDetail" runat="server" Text="Previous" title="Previous - Address Detail" OnClick="btnPrevAddressDetail_Click" />  
              <asp:Button ID="btnNextEducationDetail" runat="server" Text="Next" title="Next - Education Detail" OnClick="btnNextEducationDetail_Click"/>  
            </asp:View>  
  
            <asp:View ID="vEducationDetail" runat="server">  
                Education Detail  <asp:TextBox ID="txtEducation" runat="server" TextMode="MultiLine"></asp:TextBox>  
              <br />  
              <br />  
              <asp:Button ID="btnPrevContactDetail" runat="server" Text="Previous" title="Previous - Contact Detail" OnClick="btnPrevContactDetail_Click"/>  
              <asp:Button ID="btnNextPreviewAndSubmit" runat="server" Text="Next" title="Next - Preview & Submit" OnClick="btnNextPreviewAndSubmit_Click" />  
            </asp:View>  
  
            <asp:View ID="vPreviewAndSubmit" runat="server">  
                   
                <asp:Label ID="lblSummary" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label> 
                
                <table>  
                    <tr>  
                        <td>  
                            <b>Address Detail</b><br />  
                            <asp:Label ID="lblAddressDetail" runat="server" ></asp:Label>  
                            <br />  
                            <br />  
                        </td>  
                    </tr>  
                    <tr>  
                        <td>  
                            <b>Contact Detail</b><br />  
                            <asp:Label ID="lblContactDetail" runat="server" ></asp:Label>  
                            <br />  
                            <br />  
                        </td>  
                    </tr>  
                    <tr>  
                        <td>  
                            <b>Education Detail</b><br />  
                            <asp:Label ID="lblEducationDetail" runat="server" ></asp:Label>  
                            <br />  
                            <br />  
                        </td>  
                    </tr>  
                </table>  
              <asp:Button ID="btnEducationDetail" runat="server" Text="Previous" title="Previous - Education Detail" OnClick="btnEducationDetail_Click"/>  
              <asp:Button ID="btnSubmit" runat="server" Text="Submit" title="Submit" />  
            </asp:View>  
        </asp:MultiView>  
        </div>
    </form>
</body>
</html>
