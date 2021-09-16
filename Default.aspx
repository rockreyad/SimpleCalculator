<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleCalc.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Calculator</title>
    <style>
        h2 {
            text-align: center;
            color:aliceblue;
        }

        #CalcDiv {
            width: 400px;
            height: 420px;
            border: 1px solid black;
            margin: 15px auto;
            border-radius: 20px;
            background-color: #010135;
            color:aliceblue;
        }

        .auto-style2 {
            width: 398px;
            height: 284px;
        }

        .ColumnStyle1 {
            width: 50%;
        }

        .ColumnStyle2 {
            width: 40%;
        }

        .ColumnStyle3 {
            width: 10%;
        }

        #ErrorMessages {
            width: 400px;
            margin: 10px auto;
            font-size: large;
            color: red;
        }

        .auto-style3 {
            width: 46%;
        }

        .auto-style4 {
            width: 180px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="CalcDiv">
            <h2>Calculator</h2>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3" style="text-align: right">
                        <asp:Label ID="Label1" runat="server" Text="First Number:" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large"></asp:TextBox>

                    </td>
                    <td style="color:red;">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter a numeric value for First Number" ControlToValidate="TextBox1" Type="Double" Operator="DataTypeCheck" Visible="True" Text="*" Font-Size="Large"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Number is required." ControlToValidate="TextBox1">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right;">
                        <asp:Label ID="Label2" runat="server" Text="Second Number:" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large"></asp:TextBox>
                    </td>
                    <td style="color:red;">
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Enter a numeric value for Second Number" ControlToValidate="TextBox2" Type="Double" Operator="DataTypeCheck" Visible="True" Text="*" Font-Size="Large"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Second Number is required." ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right;">
                        <asp:Label ID="Label3" runat="server" Text="Operators:" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style4" >
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Addition (+)</asp:ListItem>
                            <asp:ListItem>Subtraction (-)</asp:ListItem>
                            <asp:ListItem>Multiplication (*)</asp:ListItem>
                            <asp:ListItem>Divison (/)</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td style="color:red;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select an operator" ControlToValidate="RadioButtonList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center; vertical-align: middle">
                        <asp:Label ID="Label4" runat="server" Text="Output:" Font-Size="Large"></asp:Label>
                        <asp:TextBox Style="text-align: center;" ID="TextBox3" runat="server" Font-Size="Large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button Style="margin-right: 6px;" ID="Button1" runat="server" Text="Calculate" Font-Size="Large" Width="100px" OnClick="CalcButton" />
                        <asp:Button Style="margin-left: 6px;" ID="Button2" runat="server" Text="Clear" Font-Size="Large" Width="100px" OnClick="ClearButton" CausesValidation="False"/>
                    </td>
                </tr>

                <tr>
                    <td style="text-align: left">
                    <asp:Label ID="Label15" runat="server" Text="<br/><br/>Devoloped by - Mahamuad Hasan" Font-Size="Small"/>
                    </td>
                </tr>
            </table>
        </div>
        <div id="ErrorMessages">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Error Messages" />
        </div>

    </form>
</body>
</html>
