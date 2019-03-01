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


public partial class TeluguNovels : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetBooklist()
    {
            List<Book> bookList = new List<Book>();
            string url = "http://www.subtlegopala.com/docs/InterestingStuff/Misc/TeluguNovels/";
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            {
                using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                {
                    string html = reader.ReadToEnd();
                    Regex regex = new Regex("<A HREF=\".*?\">(?<1>.*?)</A>");
                    MatchCollection matches = regex.Matches(html);

                    if (matches.Count > 0)
                    {
                        for (int i = 1; i < matches.Count; i++)
                        {
                            Book book = new Book();
                            string title = matches[i].Groups["1"].ToString().Trim();
                            book.BookTitle = title.Remove(title.Length - 4, 4);
                            book.BookUrl = url + matches[i].Groups["1"].ToString();
                            bookList.Add(book);
                        }
                    }
                }
            }

        string jboolkList = JsonConvert.SerializeObject(bookList);

        return jboolkList;

    }
}
public class Book
{
    public string BookTitle { get; set; }
    public object BookUrl { get; set; }
}
