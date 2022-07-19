﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="GarmentsPro.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>

    <script src="../Assets/Bootstrap/bootstrap.bundle.min5.js"></script>
    <link href="../Assets/Bootstrap/bootstrap.min5.css" rel="stylesheet" />
    <style>
        body {
            background-color: silver;
        }
        .MyCon {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            background: #ffffff;
            width: 360px;
            padding: 30px;
            box-shadow: #00ff21;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Header -->
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div class="container-fluid">

                    <a class="navbar-brand" href="#">
                        <span><i class="fa fa-user rounded-pill"></i></span>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    </div>
                </div>
            </nav>
            <!-- Header -->
            <div class="MyCon">
                <h2 style="text-align: center">Admin Login </h2>
                <label>UserName</label>
                <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server" Height="35px" Width="288px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    ControlToValidate="txtUserName"
                    Text=" This Field Cannot be Empty"
                    ForeColor="red"
                    Font-Size="Small"
                    runat="server"></asp:RequiredFieldValidator>
                <br />
                <label>Password</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server" Height="35px" Width="288px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    ControlToValidate="txtPassword"
                    Text=" This Field Cannot be Empty"
                    ForeColor="red"
                    Font-Size="Small"
                    runat="server"></asp:RequiredFieldValidator>
                <br />
                <div class="d-grid align-content-center">
                    <asp:Button ID="BtnCreate" runat="server" OnClick="BtnCreate_Click" Text="Login" CssClass="btn btn-secondary ms-3 " Width="250px" Height="39px" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
