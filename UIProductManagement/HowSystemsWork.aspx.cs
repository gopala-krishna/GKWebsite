using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;
using System.Net;
using System.Text.RegularExpressions;
using System.Text;

public partial class HowSystemsWork : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetProductList()
    {
        Product p1 = new Product { ImgUrl = "../images/HowSystemsWork/whatsapp.jpeg", LinkUrl = "../docs/HowProductsWork/whatsapp.pdf" };
        Product p2 = new Product { ImgUrl = "../images/HowSystemsWork/gmaps.jpeg", LinkUrl = "../docs/HowProductsWork/HowGoogleMapsWork.pdf" };
        Product p3 = new Product { ImgUrl = "../images/HowSystemsWork/google.jpeg", LinkUrl = "https://www.google.com/search/howsearchworks/" };
        Product p4 = new Product { ImgUrl = "../images/HowSystemsWork/facebook.jpeg", LinkUrl =" ../docs/HowProductsWork/facebook.pdf" };
        Product p5 = new Product { ImgUrl = "../images/HowSystemsWork/rdbms.jpeg", LinkUrl = " ../docs/HowProductsWork/HowRDBMSWork.pdf" };
        Product p6 = new Product { ImgUrl = "../images/HowSystemsWork/youtube.jpeg", LinkUrl = "../docs/HowProductsWork/HowYouTubeWorks.pdf" };
        Product p7 = new Product { ImgUrl = "../images/HowSystemsWork/netflix.jpeg", LinkUrl = "../docs/HowProductsWork/HowNetflixWorks.pdf" };

        Product p8 = new Product { ImgUrl = "../images/HowSystemsWork/cellphone.jpeg", LinkUrl = "../docs/HowProductsWork/HowCellPhonesWork.pdf" };
        Product p9 = new Product { ImgUrl = "../images/HowSystemsWork/atm.jpeg", LinkUrl = "../docs/HowProductsWork/atm.pdf" };
        Product p10 = new Product { ImgUrl = "../images/HowSystemsWork/backrub.jpeg", LinkUrl = "http://infolab.stanford.edu/~backrub/google.html" };
        Product p11 = new Product { ImgUrl = "../images/HowSystemsWork/antivirus.jpeg", LinkUrl = "../docs/HowProductsWork/HowAntivirusWorks.pdf" };
        




        List<Product> products = new List<Product>();
        products.Add(p1); products.Add(p2);
        products.Add(p3);products.Add(p4); products.Add(p5);
        products.Add(p6); products.Add(p7); products.Add(p8);
        products.Add(p9);
        products.Add(p10);
        products.Add(p11);

        string jstrProducts = JsonConvert.SerializeObject(products);
        return jstrProducts;

    }

}

public class Product
{
    public string ImgUrl { get; set; }
    public string LinkUrl { get; set; }

}
public class ProductList
{
    //public int messageCode { get; set; }
    //public string Message { get; set; }
    public List<Product> Products { get; set; }
}
