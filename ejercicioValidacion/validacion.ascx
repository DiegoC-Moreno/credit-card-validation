<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="validacion.ascx.cs" Inherits="ejercicioValidacion.validacion" %>

<head>
     <style>
        form{
            background-color:skyblue;
            box-shadow: 10px 10px lightgray;
            padding-bottom: 10px;
        }
        p, #titulo {
            padding-top: 16px;
            font-family: Arial;
            font-size: 16px;
            align-content: center;
            text-align: center;
        }

        #titulo {
            font-style:oblique;
            font-weight: 900;
            font-size: 28px;
        }
        #Button1{
            width:75px;
            height: 37.5px;
            color: black;
            background-color:white;
            border: 1px solid lightgreen;
            border-radius: 6px;
            font-size: 18px;
        }

        #Button1:hover {
            background-color: lightgreen;
            border-color: white;
            color:white;
            transition: all 0.5s;
        }
        #TextBox1 {
            border:0;
            border-bottom:1px solid #555;  
            background:transparent;
            width:100%;
            padding:8px 0 5px 0;
            font-size:16px;
            color:#000;
        }
        #TextBox1:focus {
            border-color:none;
            outline: none;
            border-bottom:1px solid #555; 
        }
    </style>
</head> 
<p>
  <asp:Label ID="titulo" runat="server">Bienvenido a la validación de tarjetas de credito</asp:Label>

</p>
<p>
    Ingrese el numero de la tarjeta:&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="211px">4013200209774812</asp:TextBox>
</p>
<p>
    <asp:Label ID="fecha" runat="server" Width="211px">seleccione mes y digite el año</asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
    </asp:DropDownList>
    <asp:Label Text="año" runat="server" />
    <asp:TextBox ID= "year" runat="server" />
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</p>
<p>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>

