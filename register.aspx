<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            height: 23px;
            width: 551px;
            background-color: #000000;
        }
        .style4
        {
            height: 23px;
            width: 203px;
            background-color: #000000;
        }
        .style5
        {
            width: 203px;
            background-color: #CCCCCC;
        }
        .style6
        {
            width: 551px;
            background-color: #CCCCCC;
        }
        .style7
        {
            height: 23px;
            width: 411px;
            background-color: #000000;
        }
        .style8
        {
            width: 411px;
            background-color: #CCCCCC;
        }
        .style9
        {
            width: 203px;
            height: 51px;
            background-color: #CCCCCC;
        }
        .style10
        {
            width: 551px;
            height: 51px;
            background-color: #CCCCCC;
        }
        .style11
        {
            width: 411px;
            height: 51px;
            background-color: #CCCCCC;
        }
        .style12
        {
            color: #FFFFFF;
        }
        .style13
        {
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 498px; background-color: #CCCCCC;">
    
        <table class="style1">
            <tr>
                <td class="style4">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <span class="style12">REGISTRATION FORM</span></td>
                <td class="style7">
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="fname" runat="server" Height="28px" Width="164px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="fname" ErrorMessage="First Name is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="lname" runat="server" Height="21px" Width="169px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="lname" EnableViewState="False" 
                        ErrorMessage="Last Name is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="email" runat="server" Height="19px" Width="172px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="email" EnableViewState="False" ErrorMessage="Email is Empty" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="email" ErrorMessage="Invalid Email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    <br />
                </td>
                <td class="style10">
                    &nbsp;&nbsp;<asp:Button 
                        ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="Clear" CssClass="style13" style="color: #FFFFFF" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Delete" 
                        CssClass="style13" style="color: #FFFFFF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        style="color: #FFFFFF; background-color: #3366CC" />
                </td>
                <td class="style11">
                    </td>
            </tr>
        </table>
    
        <br />
    
    </div>
    <asp:Table ID="Table1" runat="server">
    </asp:Table>
    </form>
</body>
</html>
