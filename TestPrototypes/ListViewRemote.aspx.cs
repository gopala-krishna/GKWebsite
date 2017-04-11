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

public partial class TestPrototypes_ListViewRemote : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetPlaylist()
    {
        BScore o1 = new BScore { ImgUrl = "../images/HowSystemsWork/whatsapp.jpg", LinkUrl="http://google.com" };
        BScore o2 = new BScore { ImgUrl = "../images/HowSystemsWork/whatsapp.jpg", LinkUrl="http://microsoft.com"};
        BScore o3 = new BScore { ImgUrl = "../images/HowSystemsWork/whatsapp.jpg", LinkUrl="http://amazon.com" };
        List<BScore> bscores = new List<BScore>();
        bscores.Add(o1); bscores.Add(o2);
        bscores.Add(o3);

        JsonPlayList obj = new JsonPlayList {BScores = bscores };

        string s = JsonConvert.SerializeObject(obj);
   
        return s;

    }

    }

    public class BScore
{
    public string ImgUrl { get; set; }
    public string LinkUrl { get; set; }
   
}
public class JsonPlayList
{
    //public int messageCode { get; set; }
    //public string Message { get; set; }
    public List<BScore> BScores { get; set; }
}
