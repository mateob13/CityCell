using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CityCell.MODULES
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void OnClickRegresar(object sender, EventArgs e)
        {
            Response.Redirect("../LOGIN/Login.aspx");
        }

        public void ClickRegister(object sender, EventArgs e)
        {
            var Name = TxtName.Text;
            var Identification = TxtIdentificacion.Text;
            var Mail = TxtMail.Text;
            var UserId = TxtUser.Text;
            var Password = TxtPassword.Text;

            if (Name == "" || Identification == "" || Mail == "" || UserId == "" || Password =="")
            {
                string msg = "Por favor ingrese todos los datos requeridos.";
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                    "alert",
                    "alert('" + msg + "');", true);
            }
            else
            {
                using (ServiceCityCell.WSUserClient client = new ServiceCityCell.WSUserClient())
                {
                    var MensajeLogin = client.RegisterNow(Name, Identification, Mail, UserId, Password);

                    if (Convert.ToInt32(MensajeLogin) == 1)
                    {
                        Response.Redirect("../LOGIN/Login.aspx");
                        string msg = "El registro se realizo con exito.";
                        ScriptManager.RegisterStartupScript(this, this.GetType(),
                            "alert",
                            "alert('" + msg + "');", true);
                    }
                    else
                    {
                        string msg = "El registro no se realizo con exito, por favor vuelva a intentarlo.";
                        ScriptManager.RegisterStartupScript(this, this.GetType(),
                            "alert",
                            "alert('" + msg + "');", true);
                    }

                }
            }

        }
    }
}