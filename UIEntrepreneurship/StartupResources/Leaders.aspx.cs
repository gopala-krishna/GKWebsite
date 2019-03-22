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


public partial class Leaders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetLeaderBooklist()
    {
            List<LeaderBook> leaderbookList = new List<LeaderBook>();
            string url = "http://www.subtlegopala.com/docs/Entrepreneurship/Leaders/";
            string imageurl = "http://www.subtlegopala.com/images/Entrepreneurship/Leaders/";
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
                        LeaderBook leaderbook = new LeaderBook();
                            string title = matches[i].Groups["1"].ToString().Trim();
                        leaderbook.LeaderBookTitle = title.Remove(title.Length - 4, 4);
                        leaderbook.LeaderBookUrl = url + matches[i].Groups["1"].ToString();
                        leaderbook.LeaderBookImageUrl = imageurl+ leaderbook.LeaderBookTitle + ".jpeg";
                        leaderbookList.Add(leaderbook);
                        }
                    }
                }
            }

        string jleaderbookList = JsonConvert.SerializeObject(leaderbookList);

        return jleaderbookList;

    }
}
public class LeaderBook
{
    public string LeaderBookTitle { get; set; }
    public object LeaderBookUrl { get; set; }
    public object LeaderBookImageUrl { get; set; }
}
