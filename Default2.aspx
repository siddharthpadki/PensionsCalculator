<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-color:#00ffff;
        }
        .newStyle1 {
            background-color: #00ffff;
        }
        .newStyle2 {
            background-color: #00ffff;
            background-repeat: repeat;           
            background-position: right bottom;         
        }
        #form1 {
            margin-left:15%;
            margin-right:15%;
            margin-top:20px;
            margin-bottom:0;
            background-color:white;
            padding:30px;
        }
        .formLabel, .formInput, .formResult {
            float:left;           
        }                      
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Pensions calculator</h1>
        Enter the age at which you intend to retire.
        <asp:TextBox ID="TextBoxRetire" runat="server"></asp:TextBox>
        <asp:Label ID="LabelRetire" runat="server" Text="Years"></asp:Label>
        <br />
        <br />
        <asp:Label ID="LabelClass" runat="server" Text="Do you have special class status (with a normal retirement age of 55)?"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Text="No" Value="No"></asp:ListItem>
            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
        </asp:RadioButtonList>       
        <asp:Label ID="LabelStatus" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="LabelSalary" runat="server" Text="Enter your current salary (excluding any amounts you do not pay pension contributions on).
Please enter only numeric values (no commas), using decimal points where needed.
Non-numeric values will cause errors."></asp:Label>£
        <asp:TextBox ID="TextBoxSalary" runat="server"></asp:TextBox>
        <br />
        <br />
        Enter the total number of whole years Scheme membership.
Do not include any added years you are purchasing as this calculator does not take account of them.
        <asp:TextBox ID="TextBoxMembership" runat="server"></asp:TextBox>
        <asp:Label ID="LabelMembership" runat="server" Text="Years"></asp:Label>
        <br />
        <br />
        <asp:Button ID="ButtonCalculate" runat="server" Text="Calculate" OnClick="ButtonCalculate_Click" />      
        <asp:Label ID="LabelCalculate" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <h2>Results</h2>
        Retirement at selected age before reduction is applied:
        <br />
        <br />
        <asp:Label ID="LabelAnnualPension" runat="server" Text="Annual Pension"></asp:Label>
        <asp:TextBox ID="TextBoxAnnualPension" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LabelLumpSum" runat="server" Text="Lump Sum Retirement Allowance"></asp:Label>
        <asp:TextBox ID="TextBoxLumpSum" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LabelSurvivorPension" runat="server" Text="Survivor Pension"></asp:Label>
        <asp:TextBox ID="TextBoxSurvivorPension" runat="server"></asp:TextBox>
        <br />
        <br />
        Retirement at selected age with reduction applied:
        <br />
        <br />
        <asp:Label ID="LabelMaxLumpSum" runat="server" Text="Maximum Lump Sum Retirement Allowance"></asp:Label>
        <asp:TextBox ID="TextBoxMaxLumpSum" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LabelReducedPension" runat="server" Text="Annual Pension (reduced by 20%)"></asp:Label>
        <asp:TextBox ID="TextBoxReducedPension" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
