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


public partial class ImpBooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadBookList();
    }
    

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string LoadBookList()
    {
        Book o1 = new Book { BookName = "Test1"};
        Book o2 = new Book { BookName = "Test2" };
        List<Book> books = new List<Book>();
        books.Add(o1); books.Add(o2);

        JsonBookList obj = new JsonBookList { Message = "Succesful", messageCode = 1004, Books = books };

        string s = JsonConvert.SerializeObject(obj);
        return s;
    }

}
public class Book
{
    public string BookName { get; set; }
   //public object BookImage{ get; set; }

}
public class JsonBookList
{
    public int messageCode { get; set; }
    public string Message { get; set; }
    public List<Book> Books { get; set; }
}
