<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="WebForm.UserDetails" %>

<%@ Register Src="~/Help.ascx" TagPrefix="uc1" TagName="Help" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .empty {
            background-color: red;
        }
    </style>

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btn1").click(function () {
                $("#GridView1").toggle("slow");
            })

            $("#Help1_btn2").click(function () {
                $("#tbl1").slideToggle("slow");
            })
        })
    </script>
</head>
<body>
    <h1 style="font: bolder">Welcome to User Details</h1>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="lbl1" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:UpdatePanel ID="updatepanel1" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="PageIndexChanging" />
                        </Triggers>

                        <ContentTemplate>
                            <div>
                                <asp:Button ID="btn1" CssClass="btn btn-warning btn-sm" Text="Toggle Table" runat="server" OnClientClick="return false;" />
                                <br />
                            </div>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                BackColor="White" BorderColor="#3366CC" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderStyle="None" BorderWidth="1px"
                                CellPadding="4" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanged" PageSize="3" PagerSettings-Mode="Numeric" DataKeyNames="Id" AutoGenerateDeleteButton="True"
                                AutoGenerateEditButton="True" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                                <AlternatingRowStyle BackColor="LightSkyBlue" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name should contain only alphabets!" ForeColor="Red" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>' AutoPostBack="true" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                                            <div id="checkem" runat="server" visible="false">
                                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                            </div>
                                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Contact">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Contact Number cannot be blank" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Mobile number must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Age">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" MaximumValue="28" MinimumValue="18" Type="Integer" ErrorMessage="Age should be and Integer type and should be in between 18 to 25" ForeColor="Red"></asp:RangeValidator>
                                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Age should not be null" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Gender">
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Department">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:ButtonField Text="Select" CommandName="Select" ItemStyle-Width="150" />
                                </Columns>
                                <EmptyDataRowStyle BackColor="Red" />
                                <EmptyDataTemplate>
                                    <p>N/A</p>
                                </EmptyDataTemplate>
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
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </td>
                <td>
                    <asp:Label ID="lblinfo" runat="server"></asp:Label>
                </td>
                <td></td>
            </tr>
        </table>
        <br />
        <br />
        <div>
            <uc1:Help runat="server" ID="Help" />
        </div>
    </form>
</body>
</html>
