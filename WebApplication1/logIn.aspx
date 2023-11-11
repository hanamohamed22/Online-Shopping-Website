<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logIn.aspx.cs" Inherits="WebApplication1.logIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please enter your username and password<br />
        </div>
        Username<p>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
        </p>
        Password<p>
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="signin" runat="server" onClick="login" Text="Login" />
       
        <p>
            &nbsp;
        Register As:&nbsp;&nbsp;
        <asp:Button ID="Student" runat="server" onClick = "Student_button " Text =" Student" Width="88px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Supervisor" runat="server" onClick=  "Supervisor_button " Text="Supervisor" Height="27px" />
        </p>
       
    </form>
</body>
</html>
