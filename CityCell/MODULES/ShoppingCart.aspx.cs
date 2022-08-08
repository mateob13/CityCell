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
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (ServiceCityCell.WSUserClient client = new ServiceCityCell.WSUserClient())
            {
                DataSet dsProductos = client.ObtenerProductos();

                if (dsProductos.Tables.Count >= 1)
                {
                    for (int i = 0; i < dsProductos.Tables[0].Rows.Count; i++)
                    {
                        
                        
                    }
                }
            }
        }
    }
}