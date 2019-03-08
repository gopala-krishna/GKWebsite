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

public partial class InterestingSongs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetPlaylist(string folderName)
    {
        List<string> ls = new List<string>();
        string url = "http://subtlegopala.com/Media/ARRehman/InterestingSongs/";
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


        string s1 = folderName.Remove(0, 1); string s2 =s1.Remove(3,1);
        string strJson = GetFileListing(ls.FindAll((i => i.StartsWith(s2.ToString()))));
        return strJson;
    }

    public static string GetFileListing(List<string> dirNames)
    {
        List<Song> songsList = new List<Song>();
        foreach (string dirName in dirNames)
        {
            string url = "http://www.subtlegopala.com/Media/ARRehman/InterestingSongs/" + dirName;
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
                            Song song = new Song();
                            //song.Movie = dirName;
                            string title = matches[i].Groups["1"].ToString().Trim();
                            song.SongTitle = title.Remove(title.Length - 4, 4);
                            song.DownloadUrl = url +"\\"+ matches[i].Groups["1"].ToString();
                            song.Play = "";
                            songsList.Add(song);
                        }
                    }
                }
            }
        }

        SongsPlayList songsPlaylist = new SongsPlayList { Message = "Succesful", messageCode = 1004, Songs = songsList };

        string s = JsonConvert.SerializeObject(songsPlaylist);

        return s;

    }
}




public class Song
{
    public string SongTitle { get; set; }
    public string Play { get; set; }
    public object DownloadUrl { get; set; }

}
public class SongsPlayList
{
    public int messageCode { get; set; }
    public string Message { get; set; }
    public List<Song> Songs { get; set; }
}
