<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegisteration.aspx.cs" Inherits="WebApplication1.StudentRegisteration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        Student Regiteration<br />
        <br />
        <asp:Label ID="emailId" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="emaill" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="pass" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="firstname" runat="server" Text="FirstName"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="first" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lastname" runat="server" Text="LastName"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="last" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="faculty" runat="server" Text="Faculty"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="fac" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="address" runat="server" Text="Address"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="add" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="IfGucian" runat="server" Text="Please Check the box if you are a gucian"></asp:Label>
        &nbsp;
        <asp:CheckBox ID="CheckBox" runat="server" Text="  " />
        <br />
        <br />
        <asp:Button ID="register" runat="server" OnClick ="Register_button" Text="Register" />
        <br />
        <br />
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
