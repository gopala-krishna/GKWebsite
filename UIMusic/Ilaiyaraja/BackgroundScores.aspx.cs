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

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetPlaylist(string name)
    {
        string a = name;
        Song o1 = new Song { Title = "Saare Sapne", Url = "http://subtlegopalweb.com/docs/Saare.mp3", Play = "" };
        Song o2 = new Song { Title = "Anand", Url = "http://subtlegopalweb.com/docs/Anand.mp3", Play = "" };
        List<Song> songs = new List<Song>();
        songs.Add(o1); songs.Add(o2);

        JsonPlayList obj = new JsonPlayList { Message = "Succesful", messageCode = 1004, Songs = songs };

        string s = JsonConvert.SerializeObject(obj);
        return s;
    }

    //[WebMethod]
    //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    //public static string GetPlaylist(string str)
    //{
    //    string a = str;
    //    Song o1 = new Song { Title = "Saare Sapne", Url = "http://subtlegopalweb.com/docs/Saare.mp3", Play = "" };
    //    Song o2 = new Song { Title = "Anand", Url = "http://subtlegopalweb.com/docs/Anand.mp3", Play = "" };
    //    List<Song> songs = new List<Song>();
    //    songs.Add(o1); songs.Add(o2);

    //    JsonPlayList obj = new JsonPlayList { Message = "Succesful", messageCode = 1004, Songs = songs };

    //    string s = JsonConvert.SerializeObject(obj);
    //    return s;
    //}

}

public class Song
{
    public string Title { get; set; }
    public object Url { get; set; }
    public string Play { get; set; }
}
public class JsonPlayList
{
    public int messageCode { get; set; }
    public string Message { get; set; }
    public List<Song> Songs { get; set; }
}
