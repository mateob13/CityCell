using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CityCell.LOGIN
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnLogin.Focus();
        }

        public void OnClickRegister(object sender, EventArgs e)
        {
            Response.Redirect("../MODULES/Registration.aspx");
        }

        public void ClickLogin(object sender, EventArgs e)
        {
            var UserId = TxtUser.Text;
            var Password = TxtPassword.Text;

            using (ServiceCityCell.WSUserClient client = new ServiceCityCell.WSUserClient())
            {
                var MensajeLogin = client.ObtenerLogin(UserId, Password);

                if (Convert.ToInt32(MensajeLogin) == 1)
                {
                    Response.Redirect("../MODULES/ShoppingCart.aspx");
                }
                else
                {
                    string msg = "El usuario o contraseña son incorrectos.";
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                        "alert",
                        "alert('" + msg + "');", true);
                }


            }
        }
    }
}