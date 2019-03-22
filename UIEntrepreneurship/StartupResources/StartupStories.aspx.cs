using System;
using System.Web.UI;
using System.Collections.Generic;
using System.Web.Script.Services;
using System.Web.Services;
using Newtonsoft.Json;
using System.IO;
using System.Net;
using System.Text.RegularExpressions;


public partial class StartupStories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetStartuplist()
    {
        

            List<Startup> startupList = new List<Startup>();
            string url = "http://subtlegopala.com/docs/Entrepreneurship/StartupStories/";
            string imageurl = "http://subtlegopala.com/images/Entrepreneurship/StartupStories/";
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
                        Startup startup = new Startup();
                            string title = matches[i].Groups["1"].ToString().Trim();
                        startup.StartupTitle = title.Remove(title.Length - 4, 4);
                        startup.StartupUrl = url + matches[i].Groups["1"].ToString();
                        startup.StartupImageUrl = imageurl+ startup.StartupTitle + ".jpeg";
                        startupList.Add(startup);
                        }
                    }
                }
            }

        string jstartupList = JsonConvert.SerializeObject(startupList);

        return jstartupList;

    }
}
public class Startup
{
    public string StartupTitle { get; set; }
    public object StartupUrl { get; set; }
    public object StartupImageUrl { get; set; }
}
