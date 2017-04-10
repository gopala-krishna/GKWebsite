﻿using System;
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

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetPlaylist()
    {
        BScore o1 = new BScore { DownloadUrl = "../images/HowSystemsWork/whatsapp.jpg" };
        BScore o2 = new BScore { DownloadUrl1 = "../images/HowSystemsWork/whatsapp.jpg" };
        BScore o3 = new BScore { DownloadUrl2 = "../images/HowSystemsWork/whatsapp.jpg" };
        List<BScore> bscores = new List<BScore>();
        bscores.Add(o1); bscores.Add(o2);
        bscores.Add(o3); 

        JsonPlayList obj = new JsonPlayList { Message = "Succesful", messageCode = 1004, BScores = bscores };

        string s = JsonConvert.SerializeObject(obj);
        return s;
    }

    //public static string GetDirectoryListingRegexForUrl(string url)
    //{
    //    if (url.Equals("http://www.subtlegopalweb.com/Media/BScores/Ilaiyaraja/"))
    //    {
    //        return "<a href=\".*\">(?<A>.*)</a>";
    //    }
    //    throw new NotSupportedException();
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
    public object DownloadUrl { get; set; }
    public object DownloadUrl1 { get; set; }
    public object DownloadUrl2 { get; set; }

}
public class JsonPlayList
{
    public int messageCode { get; set; }
    public string Message { get; set; }
    public List<BScore> BScores { get; set; }
}
