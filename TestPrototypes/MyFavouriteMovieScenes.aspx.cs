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


public partial class MyFavouriteMovieScenes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetMovielist()
    {
            List<Movie> movieList = new List<Movie>();
            string url = "http://localhost:53295/Media/MyPersonal/MyFavouriteMovieScenes/";
            string imageurl = "http://localhost:53295/images/MyPersonal/MyFavouriteMovieScenes/";
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
                        Movie movie = new Movie();
                        string title = matches[i].Groups["1"].ToString().Trim();
                        movie.MovieTitle = title.Remove(title.Length - 4, 4);
                        movie.MovieUrl = url + matches[i].Groups["1"].ToString();
                        movie.MovieImageUrl = imageurl+ movie.MovieTitle + ".jpeg";
                        movieList.Add(movie);
                        }
                    }
                }
            }

        string jmovieList = JsonConvert.SerializeObject(movieList);

        return jmovieList;

    }
}
public class Movie
{
    public string MovieTitle { get; set; }
    public object MovieUrl { get; set; }
    public object MovieImageUrl { get; set; }
}
