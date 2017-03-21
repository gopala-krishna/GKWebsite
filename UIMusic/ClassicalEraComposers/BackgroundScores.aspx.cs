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

public partial class BackgroundScores : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        // var uri = new Uri("http://www.example.com/mydirectory/myfile.aspx?test=1");
        // var newUri = new Uri(uri, System.IO.Path.GetDirectoryName(uri.AbsolutePath));
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

    //[WebMethod]
    //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    //public static string GetPlaylist(string folderName)
    //{
    //    BScore o1 = new BScore { Movie ="Test",BScoreTitle = "Saare Sapne", DownloadUrl = "http://subtlegopalweb.com/docs/Saare.mp3", Play = "" };
    //    BScore o2 = new BScore { Movie = "Test", BScoreTitle = "Anand", DownloadUrl = "http://subtlegopalweb.com/docs/Anand.mp3", Play = "" };
    //    List<BScore> bscores = new List<BScore>();
    //    bscores.Add(o1); bscores.Add(o2);

    //    JsonPlayList obj = new JsonPlayList { Message = "Succesful", messageCode = 1004, BScores = bscores };

    //    string s = JsonConvert.SerializeObject(obj);
    //    return s;
    //}

    //public static string GetDirectoryListingRegexForUrl(string url)
    //{
    //    if (url.Equals("http://www.subtlegopalweb.com/Media/BScores/Ilaiyaraja/"))
    //    {
    //        return "<a href=\".*\">(?<A>.*)</a>";
    //    }
    //    throw new NotSupportedException();
    //}
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetPlaylist(string folderName)
    {
        List<string> ls = new List<string>();
        string url = "http://www.subtlegopalweb.com/Media/NonIndianLegends/BScores";
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
                    foreach (Match match in matches)
                    { 
                        ls.Add(match.Groups["1"].ToString());
                    }
                }
            }
        }
        
        string s1 =folderName.Remove(0, 1);string s2 = s1.Remove(s1.Length - 1, 1);
        string strJson = GetFileListing(ls.FindAll((i => i.StartsWith(s2.ToString()))));
        return strJson;
    }

    public static string GetFileListing(List<string> dirNames)
    {
        List<BScore> bscoresList = new List<BScore>();
        foreach (string dirName in dirNames)
        {
            string url = "http://www.subtlegopalweb.com/Media/NonIndianLegends/BScores/" + dirName;
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
                        for(int i =1; i<matches.Count;i++)
                        {
                            BScore bscore = new BScore();
                            bscore.Movie = dirName;
                            string title = matches[i].Groups["1"].ToString().Trim();
                            bscore.BScoreTitle = title.Remove(title.Length - 4, 4);
                            bscore.DownloadUrl = url +"\\"+ matches[i].Groups["1"].ToString();
                            bscore.Play = "";
                            bscoresList.Add(bscore);
                        }
                    }
                }
            }
        }

        JsonPlayList jsonPlaylist = new JsonPlayList { Message = "Succesful", messageCode = 1004, BScores = bscoresList };

        string s = JsonConvert.SerializeObject(jsonPlaylist);

        return s;

    }



    //[WebMethod]
    //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    //public static string GetBscores(string folderName)
    //{
    //    string strBScoresPath = "http://www.subtlegopalweb.com/Media/BScores/Ilaiyaraja";
    //    List<BScore> bscoresList = new List<BScore>();


    //    DirectoryInfo Dir = new DirectoryInfo(strBScoresPath);

    //    DirectoryInfo[] albums = Dir.GetDirectories("*.*", SearchOption.AllDirectories);
    //    foreach (DirectoryInfo album in albums)
    //    {
    //        FileInfo[] bscores = album.GetFiles();

    //        foreach ( FileInfo bscoreTitle in bscores)
    //        {
    //            BScore bscore = new BScore();
    //            bscore.Movie = album.FullName;
    //            bscore.BScoreTitle = bscoreTitle.FullName;
    //            bscore.DownloadUrl = strBScoresPath + "\\" + album + "\\" + bscoreTitle;
    //            bscore.Play = "";
    //            bscoresList.Add(bscore);
    //        }
    //    }

    //    //foreach (string album in Directory.GetDirectories(System.Web.HttpContext.Current.Server.MapPath(strBScoresPath)))
        //{
        //    foreach (string bscoreTitle in Directory.GetFiles(System.Web.HttpContext.Current.Server.MapPath(strBScoresPath) + "\\" + album))
        //    {
        //        BScore bscore = new BScore();
        //        bscore.Movie = album;
        //        bscore.BScoreTitle = bscoreTitle;
        //        bscore.DownloadUrl = strBScoresPath + "\\" + album + "\\" + bscoreTitle;
        //        bscore.Play = "";
        //        bscoresList.Add(bscore);
        //    }

        //}
    //    JsonPlayList jsonPlaylist = new JsonPlayList { Message = "Succesful", messageCode = 1004, BScores = bscoresList };

    //    string s = JsonConvert.SerializeObject(jsonPlaylist);

    //    return s;
    //}
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
