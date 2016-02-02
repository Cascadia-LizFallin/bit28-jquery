using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
        List<HostingPlan> listAddOn = new List<HostingPlan>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                HostingPlan emp = new HostingPlan();
                listAddOn = emp.GetAddOns();
                this.GridView1.DataSource = listAddOn;
                this.GridView1.DataBind();
            }
        }    
}

public class HostingPlan
{

    public int ID { get; set; }
    public string AddOnType { get; set; }
    public double AddOnCost { get; set; }

    public List<HostingPlan> GetAddOns()
    {
        List<HostingPlan> eList = new List<HostingPlan>();

        eList.Add(new HostingPlan() { ID = 1, AddOnType = "Account Setup Fee", AddOnCost = 26.25});
        eList.Add(new HostingPlan() { ID = 2, AddOnType = "Additional Disk Space", AddOnCost = 10.35 });
        eList.Add(new HostingPlan() { ID = 3, AddOnType = "New Domain Name", AddOnCost = 9.95 });
        eList.Add(new HostingPlan() { ID = 4, AddOnType = "500 MB Email Space", AddOnCost = 21.25 });
        eList.Add(new HostingPlan() { ID = 5, AddOnType = "10 GB Bandwidth", AddOnCost = 27.75 });
        eList.Add(new HostingPlan() { ID = 6, AddOnType = "Unique IP", AddOnCost = 10.75 });
        eList.Add(new HostingPlan() { ID = 7, AddOnType = "SQL Server Hosting", AddOnCost = 12.25 });
        eList.Add(new HostingPlan() { ID = 8, AddOnType = "SSL Certificate", AddOnCost = 12.25 });
        return eList;
    }
}