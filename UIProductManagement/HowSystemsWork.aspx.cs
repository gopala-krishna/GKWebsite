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
        Product p1 = new Product { ImgUrl = "../images/HowSystemsWork/whatsapp.jpg", LinkUrl = "../docs/HowProductsWork/whatsapp.pdf" };
        Product p2 = new Product { ImgUrl = "../images/HowSystemsWork/googlebeta.jpg", LinkUrl = "http://infolab.stanford.edu/~backrub/google.html" };
        Product p3 = new Product { ImgUrl = "../images/HowSystemsWork/google.jpg", LinkUrl = "https://www.google.co.in/insidesearch/howsearchworks/thestory/" };
        Product p4 = new Product { ImgUrl = "../images/HowSystemsWork/facebook.jpg", LinkUrl =" ../docs/HowProductsWork/facebook.pdf" };
        Product p5 = new Product { ImgUrl = "../images/HowSystemsWork/atm.jpg", LinkUrl = "../docs/HowProductsWork/atm.pdf" };





        List<Product> products = new List<Product>();
        products.Add(p1); products.Add(p2);
        products.Add(p3);products.Add(p4); products.Add(p5);

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
