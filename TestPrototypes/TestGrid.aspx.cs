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

public partial class TestGrid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetPlaylist(string folderName)
    {
        List<string> ls = new List<string>();
        string url = "http://www.gopala-krishna.com/Media/ARRehman/BScores/";
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

        string s1 = folderName.Remove(0, 1); string s2 = s1.Remove(1, 1);
        //string s3 = s2.ToLower();
        string strJson = GetFileListing(ls.FindAll((i => i.StartsWith(s2.ToString()))));
        return strJson;
    }

    public static string GetFileListing(List<string> dirNames)
    {
        List<BScore> bscoresList = new List<BScore>();
        foreach (string dirName in dirNames)
        {
            string url = "http://www.gopala-krishna.com/Media/ARRehman/BScores/" + dirName;
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



    
}




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
