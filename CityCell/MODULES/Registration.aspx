<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CityCell.MODULES.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
    <style type="text/css">

        #formRegistro {
            /*height: 528px;
            width: 1014px;*/
            align-items:center;
            background-color: #F7F8F9;
            width:auto;
            position:initial;
            height:auto;
        }

        .Label01{
            text-align: left !important;
        }

        .TxtStyle{
            border: 2px solid black !important;
            border-radius: 5px !important;
            font-size: 19px;
        }

        .Btn01 {
            background-color: #FF5335 !important;
            border: 2px solid White !important;
            border-radius: 5px !important;
            font-size: 19px;
            color: #FFFFFF;
        }

        .LabelTitle{
            color: #FF5335;
            font-size: 49px;
            text-align:center !important;
        }
        .LabelTitle2{
            color: #000000;
            font-size: 51px;
            text-align:left !important;
        }

        .TextRequired{
            color: red;
            text-align:right !important;
        }
    </style>
</head>
<body>
    <form id="formRegistro" runat="server">
        <div id="DivRegister">
            <asp:Panel ID="Panel2" runat="server" Flex="6" HorizontalAlign="Right">
                <asp:Button ID="BtnRegresar" runat="server" CssClass="Btn01" Text="Regresar" Height="40px" Width="300px" OnClick="OnClickRegresar">
                    
                </asp:Button>
            </asp:Panel>
        </div>


        <div>
            <asp:Panel ID="Panel1" runat="server" Flex="5" HorizontalAlign="Center">

                <asp:Label ID="LblCreaCuenta" runat="server" CssClass="LabelTitle" Text="Crea" Font-Bold="True" ></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="LabelTitle2" Text="tu cuenta" Font-Bold="True" ></asp:Label>
                    <br /><hr /><br /><br />

                <asp:Label ID="LblName" runat="server" CssClass="Label01" Text="Nombre completo" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TxtName"
                            ErrorMessage="*" 
                            CssClass="TextRequired"
                            ValidationGroup="Validate">
                </asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TxtName" runat="server" CssClass="TxtStyle" AllowBlank="false" Height="30px" Width="400px" ToolTip="Ingrese su Nombre" MaxLength="100"></asp:TextBox>
                
                <br /><br />
                <asp:Label ID="LblIdentificacion" runat="server" CssClass="Label01" Text="Numero de identificación" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TxtIdentificacion"
                            ErrorMessage="*" 
                            CssClass="TextRequired"
                            ValidationGroup="Validate">
                </asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TxtIdentificacion" runat="server" CssClass="TxtStyle" AllowBlank="false" Height="30px" Width="400px" ToolTip="Ingrese su identificacion" MaxLength="100"></asp:TextBox>
                
                <br /><br />
                <asp:Label ID="LblMail" runat="server" CssClass="Label01" Text="Dirección de correo electronico" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TxtMail"
                            CssClass="TextRequired"
                            ErrorMessage="*" 
                            ValidationGroup="Validate">
                </asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TxtMail" runat="server" CssClass="TxtStyle" AllowBlank="false" TextMode="Email" Height="30px" Width="400px" ToolTip="Ingrese un Correo Electronico" MaxLength="250" ></asp:TextBox>
                
                <br /><br />
                <asp:Label ID="LblUser" runat="server" CssClass="Label01" Text="Usuario" Font-Bold="True" Font-Size="Large"></asp:Label><asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TxtUser"
                            CssClass="TextRequired"
                            ErrorMessage="*" 
                            ValidationGroup="Validate">
                </asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TxtUser" runat="server" CssClass="TxtStyle" AllowBlank="false"  Height="30px" Width="400px" ToolTip="Ingrese un usuario" MaxLength="50"></asp:TextBox>
                
                <br /><br />
                <asp:Label ID="LblPassword" runat="server" CssClass="Label01" Text="Contraseña" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TxtPassword"
                            CssClass="TextRequired"
                            ErrorMessage="*" 
                            ValidationGroup="Validate">
                </asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TxtPassword" runat="server" CssClass="TxtStyle" AllowBlank="false" TextMode="Password"  Height="30px" Width="400px" ToolTip="Ingrese un usuario"></asp:TextBox>
                <br /><br />
                

                <asp:Button ID="BtnRegistrar" runat="server" CssClass="Btn01" Text="Crear cuenta" Height="40px" Width="300px" OnClick="ClickRegister" ValidationGroup="Validate">
                        
                </asp:Button>
                <br />
                <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="TxtPassword"
                            CssClass="TextRequired"
                            ErrorMessage="Los campos marcados con * son requeridos." 
                            ValidationGroup="Validate">
                </asp:RequiredFieldValidator>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
