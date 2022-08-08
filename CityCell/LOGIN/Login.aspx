<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CityCell.LOGIN.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio</title>
    <link rel="stylesheet" href="../resources/style/custom.css">
    
    <script type="text/javascript">
          function Validar(){

              var UserId = document.getElementById("TxtUser").value;
              var Password = document.getElementById("TxtPassword").value;

              if (UserId == '') {
                  alert('Por favor ingrese su usuario');
                  return false;
              }
              else if (Password == '') {
                  alert('Por favor ingrese su Contraseña');
                  return false;
              }

            //return false;
          }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="DivRegister">
            
            <asp:Panel ID="Panel2" runat="server" Flex="6" HorizontalAlign="Right">
                
                <asp:Button ID="BtnRegister" runat="server" CssClass="Btn01" Text="Crear nueva cuenta" Height="40px" Width="300px" OnClick="OnClickRegister" >
                    
                </asp:Button>
            </asp:Panel>
        </div>
        <div id="DivForm"  >
            
                
                <asp:Panel ID="Panel1" runat="server" Flex="5" HorizontalAlign="Center">
                    <asp:Label ID="LblLogin" runat="server" CssClass="LabelTitle" Text="Bienvenido" Font-Bold="True" ></asp:Label>
                    <br /><br /><br />
                    <asp:Label ID="LblUser" runat="server" CssClass="Label01" Text="Usuario" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TxtUser"
                            CssClass="TextRequired"
                            ErrorMessage="*" 
                            Enabled="true"
                            ValidationGroup="Validate">
                    </asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TxtUser" runat="server" CssClass="TxtStyle" AllowBlank="false" Height="30px" Width="400px" ToolTip="Ingrese su usuario"></asp:TextBox><br />
                    
                    <br />
                    <br />
                    <asp:Label ID="LblPassword" runat="server" CssClass="Label01" Font-Bold="True" Font-Size="Large" Text="Contraseña"></asp:Label>
                    <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TxtPassword"
                            CssClass="TextRequired"
                            ErrorMessage="*" 
                            
                            ValidationGroup="Validate">
                    </asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TxtPassword" runat="server" CssClass="TxtStyle" AllowBlank="false" TextMode="Password" Height="30px" Width="400px" ToolTip="Ingrese su contraseña"></asp:TextBox><br />
                    
                    <br /><br />
                    <asp:Button ID="BtnLogin" runat="server" CssClass="BtnLogin" Text="Ingresar" Height="40px" Width="200px"  OnClick="ClickLogin" ValidationGroup="Validate">
                        
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

                <asp:Panel ID="PanelImagen" runat="server" Flex="1"  >
                    <asp:Image runat="server" ID="ImgCel" ImageUrl="../resources/images/celulares.png" Height="400" Width="800"/>
                </asp:Panel>
        </div>
        
    </form>
</body>
</html>
