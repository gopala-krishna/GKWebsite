using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class GuestBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Open the XML doc
        System.Xml.XmlDocument myXmlDocument = new System.Xml.XmlDocument();
        myXmlDocument.Load(Server.MapPath("../App_Data/guestbook.xml"));
        System.Xml.XmlNode myXmlNode = myXmlDocument.DocumentElement.FirstChild;

        // Create new XML element and populate its attributes
        System.Xml.XmlElement myXmlElement = myXmlDocument.CreateElement("entry");
        myXmlElement.SetAttribute("name", Server.HtmlEncode(txtName.Text));
        myXmlElement.SetAttribute("email", Server.HtmlEncode(txtMail.Text));
        myXmlElement.SetAttribute("phone", Server.HtmlEncode(txtMail.Text));
        myXmlElement.SetAttribute("comment", Server.HtmlEncode(txtComment.Text));

        // Insert data into the XML doc and save
        myXmlDocument.DocumentElement.InsertBefore(myXmlElement, myXmlNode);
        myXmlDocument.Save(Server.MapPath("../App_Data/guestbook.xml"));

        // Re-bind data since the doc has been added to
        BindData();

    }

    void BindData()
    {
        XmlTextReader myXmlReader = new XmlTextReader(Server.MapPath("../App_Data/guestbook.xml"));
        DataSet myDataSet = new DataSet();
        myDataSet.ReadXml(myXmlReader);
        myXmlReader.Close();

        MyGuestbook.DataSource = myDataSet.Tables[0];
        MyGuestbook.DataBind();
    }
}