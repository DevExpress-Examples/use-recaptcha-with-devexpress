using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Configuration;
using System.IO;


namespace ReCaptcha
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Label label = new Label()
            {
                ID = "ValidationResult",
                Text = "Success"
            };
            label.ForeColor = System.Drawing.Color.Green;
            form1.Controls.Add(label);
        }
    }
}