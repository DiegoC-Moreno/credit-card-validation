<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resolucion.aspx.cs" Inherits="ejercicioValidacion.Resolucion" %>

<%@ Register src="validacion.ascx" tagname="validacion" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
<body>
    <form id="form1" runat="server">
        <div>
           
            <uc1:validacion ID="validacion1" runat="server" />
           
        </div>
    </form>
</body>
</html>
