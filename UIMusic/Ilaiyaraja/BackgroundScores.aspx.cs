using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class BackgroundScores : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //[WebMethod]
    //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    //public static string LoadPlaylists()
    //{
    //    Playlist p1 = new Playlist { Url = "A" };
    //    Playlist p2 = new Playlist { Url = "B" };
    //    List<Playlist> playlists = new List<Playlist>();
    //    playlists.Add(p1); playlists.Add(p2);

    //    JsonPlayLists obj = new JsonPlayLists { Message = "Succesful", messageCode = 1004, Playlists = playlists };

    //    string s = JsonConvert.SerializeObject(obj);
    //    return s;
    //}

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetPlaylist(string folderName)
    {
        BScore o1 = new BScore { Movie ="Test",BScoreTitle = "Saare Sapne", DownloadUrl = "http://subtlegopalweb.com/docs/Saare.mp3", Play = "" };
        BScore o2 = new BScore { Movie = "Test", BScoreTitle = "Anand", DownloadUrl = "http://subtlegopalweb.com/docs/Anand.mp3", Play = "" };
        List<BScore> bscores = new List<BScore>();
        bscores.Add(o1); bscores.Add(o2);

        JsonPlayList obj = new JsonPlayList { Message = "Succesful", messageCode = 1004, BScores = bscores };

        string s = JsonConvert.SerializeObject(obj);
        return s;
    }
}

//public class Playlist
//{
//    public object Url { get; set; }
//}
//public class JsonPlayLists
//{
//    public int messageCode { get; set; }
//    public string Message { get; set; }
//    public List<Playlist> Playlists { get; set; }
//}


public class BScore
{
    public string Movie { get; set; }
    public string BScoreTitle { get; set; }
    public string Play { get; set; }
    public object DownloadUrl { get; set; }

}
public class JsonPlayList
{
    public int messageCode { get; set; }
    public string Message { get; set; }
    public List<BScore> BScores { get; set; }
}
