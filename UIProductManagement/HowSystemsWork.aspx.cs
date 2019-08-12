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
        Product p1 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/whatsapp.jpeg", LinkUrl = "../docs/ProductManagement/HowProductsWork/whatsapp.pdf" };
        Product p2 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/gmaps.jpeg", LinkUrl = "../docs/ProductManagement/HowProductsWork/HowGoogleMapsWork.pdf" };
        Product p3 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/google.jpeg", LinkUrl = "https://www.google.com/search/howsearchworks/" };
        Product p4 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/facebook.jpeg", LinkUrl = " ../docs/ProductManagement/HowProductsWork/facebook.pdf" };
        Product p5 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/rdbms.jpeg", LinkUrl = " ../docs/ProductManagement/HowProductsWork/HowRDBMSWork.pdf" };
        Product p6 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/youtube.jpeg", LinkUrl = "../docs/ProductManagement/HowProductsWork/HowYouTubeWorks.pdf" };
        Product p7 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/netflix.jpeg", LinkUrl = "../docs/ProductManagement/HowProductsWork/HowNetflixWorks.pdf" };
        Product p8 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/bittorrent.jpeg", LinkUrl = "../docs/ProductManagement/HowProductsWork/HowBittorrentWork.pdf" };

        Product p9 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/cellphone.jpeg", LinkUrl = "../docs/ProductManagement/HowProductsWork/HowCellPhonesWork.pdf" };
        Product p10 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/atm.jpeg", LinkUrl = "../docs/ProductManagement/HowProductsWork/atm.pdf" };
        Product p11 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/backrub.jpeg", LinkUrl = "http://infolab.stanford.edu/~backrub/google.html" };
        Product p12 = new Product { ImgUrl = "../images/ProductManagement/HowSystemsWork/antivirus.jpeg", LinkUrl = "../docs/ProductManagement/HowProductsWork/HowAntivirusWorks.pdf" };
        




        List<Product> products = new List<Product>();
        products.Add(p1); products.Add(p2);
        products.Add(p3);products.Add(p4); products.Add(p5);
        products.Add(p6); products.Add(p7); products.Add(p8);
        products.Add(p9);
        products.Add(p10);
        products.Add(p11);
        products.Add(p12);

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
