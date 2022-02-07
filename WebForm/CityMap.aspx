<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityMap.aspx.cs" Inherits="WebForm.CityMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">  
            <div>  
                <table>  
                    <tr>  
                        <td colspan="4">  
                            <asp:ImageMap ID="india" runat="server" ImageUrl="~/Content/City.PNG" Height="500px" Width="887px" HotSpotMode="PostBack" OnClick="india_Click" BackColor="#C0C000" BorderColor="DarkSlateGray" ForeColor="Red">
                                <asp:CircleHotSpot Radius="7" X="215" Y="125" HotSpotMode="PostBack" NavigateUrl="~/Content/City.PNG" PostBackValue="bhuj" AlternateText="Bhuj" />
                                <asp:CircleHotSpot Radius="7" X="525" Y="95" HotSpotMode="PostBack" NavigateUrl="~/Content/City.PNG" PostBackValue="patan" />
                                <asp:CircleHotSpot Radius="7" X="565" Y="45" HotSpotMode="PostBack" NavigateUrl="~/Content/City.PNG" PostBackValue="ambaji" />
                                <asp:CircleHotSpot Radius="7" X="525" Y="150" HotSpotMode="PostBack" NavigateUrl="~/Content/City.PNG" PostBackValue="me" />
                                <asp:CircleHotSpot Radius="7" X="625" Y="120" HotSpotMode="PostBack" NavigateUrl="~/Content/City.PNG" PostBackValue="him" />
                                <asp:CircleHotSpot Radius="7" X="495" Y="195" HotSpotMode="PostBack" NavigateUrl="~/Content/City.PNG" PostBackValue="sure" />
                                <asp:CircleHotSpot Radius="7" X="565" Y="195" HotSpotMode="PostBack" NavigateUrl="~/Content/City.PNG" PostBackValue="ahd" /> </asp:ImageMap>  
                        </td>  
                        <td colspan="2" style="width: 364px">  
                            <asp:Panel ID="p1" runat="server" Height="20px" Visible="false">  
                                <asp:Label ID="lbl1" Text="CITY:Bhuj STATE:Gujarat" runat="server" Width="162px" Height="57px" BackColor="MediumVioletRed" Font-Bold="True" Font-Size="Larger" ForeColor="Blue"></asp:Label>  
                            </asp:Panel>  
                            <asp:Panel ID="p2" runat="server" Height="18px" Visible="false">  
                                <asp:Label ID="lbl2" Text="CITY:Patan STATE:Gujarat" runat="server" Width="162px" Height="45px" BackColor="MediumVioletRed" Font-Bold="True" Font-Size="Larger" ForeColor="Blue"></asp:Label>  
                            </asp:Panel>  
                            <asp:Panel ID="p3" runat="server" Height="16px" Visible="false">  
                                <asp:Label ID="lbl3" Text="CITY:Ambaji STATE:Gujarat" runat="server" Width="160px" BackColor="MediumVioletRed" Font-Bold="True" Font-Size="Larger" ForeColor="Blue"></asp:Label>  
                            </asp:Panel>  
                            <asp:Panel ID="p4" runat="server" Height="14px" Visible="false">  
                                <asp:Label ID="lbl4" Text="CITY:Mehsana STATE:Gujarat" runat="server" Width="161px" BackColor="MediumVioletRed" Font-Bold="True" Font-Size="Larger" ForeColor="Blue"></asp:Label>  
                            </asp:Panel>  
                            <asp:Panel ID="p5" runat="server" Height="14px" Visible="false">  
                                <asp:Label ID="lbl5" Text="CITY:Himatnagar STATE:Gujarat" runat="server" Width="161px" BackColor="MediumVioletRed" Font-Bold="True" Font-Size="Larger" ForeColor="Blue"></asp:Label>  
                            </asp:Panel>  
                            <asp:Panel ID="p6" runat="server" Height="14px" Visible="false">  
                                <asp:Label ID="lbl6" Text="CITY:Surendranagar STATE:Gujarat" runat="server" Width="90px" BackColor="MediumVioletRed" Font-Bold="True" Font-Size="Larger" ForeColor="Blue"></asp:Label>  
                            </asp:Panel>  
                            <asp:Panel ID="p7" runat="server" Height="14px" Visible="false">  
                                <asp:Label ID="lbl7" Text="CITY:Ahemdabad STATE:Gujarat" runat="server" Width="162px" BackColor="MediumVioletRed" Font-Bold="True" Font-Size="Larger" ForeColor="Blue"></asp:Label>  
                            </asp:Panel>  
                        </td>  
                    </tr>  
                </table>  
            </div>  
        </form>  
</body>
</html>
