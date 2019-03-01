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

public partial class PitchDecks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetPitchDecksList()
    {
        PitchDeck p1 = new PitchDeck { ImgUrl = "../../images/PitchDecks/airbnb.jpeg", LinkUrl = " ../../docs/PitchDecks/airbnb-pitch-deck.pdf" };
        PitchDeck p2 = new PitchDeck { ImgUrl = "../../images/PitchDecks/buzzfeed.jpeg", LinkUrl = " ../../docs/PitchDecks/buzzfeed-pitch-deck.pdf" };
        PitchDeck p3 = new PitchDeck { ImgUrl = "../../images/PitchDecks/linkedin.jpeg", LinkUrl = "../../docs/PitchDecks/linkedin-pitch-deck.pdf" };
        PitchDeck p4 = new PitchDeck { ImgUrl = "../../images/PitchDecks/moz.jpeg", LinkUrl = "../../docs/PitchDecks/moz-pitch-deck.pdf" };
        PitchDeck p5 = new PitchDeck { ImgUrl = "../../images/PitchDecks/tinder.jpeg", LinkUrl = " ../../docs/PitchDecks/tinder-pitch-deck.pdf" };
        PitchDeck p6 = new PitchDeck { ImgUrl = "../../images/PitchDecks/youtube.jpeg", LinkUrl = "../../docs/PitchDecks/youtube-pitch-deck.pdf" };
        PitchDeck p7 = new PitchDeck { ImgUrl = "../../images/PitchDecks/appvirality.jpeg", LinkUrl = "../../docs/PitchDecks/appvirality-pitch-deck.pdf" };

        PitchDeck p8 = new PitchDeck { ImgUrl = "../../images/PitchDecks/yammer.jpeg", LinkUrl = " ../../docs/PitchDecks/yammer-pitch-deck.pdf" };
        PitchDeck p9 = new PitchDeck { ImgUrl = "../../images/PitchDecks/uber.jpeg", LinkUrl = " ../../docs/PitchDecks/uber-pitch-deck.pdf" };
        PitchDeck p10 = new PitchDeck { ImgUrl = "../../images/PitchDecks/snapchat.jpeg", LinkUrl = "../../docs/PitchDecks/snapchat-for-business-pitch-deck.pdf" };
        PitchDeck p11 = new PitchDeck { ImgUrl = "../../images/PitchDecks/questo.jpeg", LinkUrl = "../../docs/PitchDecks/questoai-pitch-deck.pdf" };
        PitchDeck p12 = new PitchDeck { ImgUrl = "../../images/PitchDecks/mysql.jpeg", LinkUrl = " ../../docs/PitchDecks/mysql-pitch-deck.pdf" };
        PitchDeck p13 = new PitchDeck { ImgUrl = "../../images/PitchDecks/mint.jpeg", LinkUrl = "../../docs/PitchDecks/mint-pitch-deck.pdf" };
        PitchDeck p14 = new PitchDeck { ImgUrl = "../../images/PitchDecks/facebook.jpeg", LinkUrl = "../../docs/PitchDecks/facebook-pitch-deck.pdf" };
        PitchDeck p15 = new PitchDeck { ImgUrl = "../../images/PitchDecks/dropbox.jpeg", LinkUrl = "../../docs/PitchDecks/dropbox-pitch-deck.pdf" };
        PitchDeck p16 = new PitchDeck { ImgUrl = "../../images/PitchDecks/castle.jpeg", LinkUrl = "../../docs/PitchDecks/castle-pitch-deck.pdf" };







        List<PitchDeck> pitchdecks = new List<PitchDeck>();
        pitchdecks.Add(p1); pitchdecks.Add(p2); pitchdecks.Add(p3);
        pitchdecks.Add(p4); pitchdecks.Add(p5); pitchdecks.Add(p6); pitchdecks.Add(p7);
        pitchdecks.Add(p8); pitchdecks.Add(p9); pitchdecks.Add(p10); pitchdecks.Add(p11);
        pitchdecks.Add(p12); pitchdecks.Add(p13); pitchdecks.Add(p14); pitchdecks.Add(p15);
        pitchdecks.Add(p16); 


        string jstrPitchdecks = JsonConvert.SerializeObject(pitchdecks);
        return jstrPitchdecks;

    }

}

public class PitchDeck
{
    public string ImgUrl { get; set; }
    public string LinkUrl { get; set; }

}
public class PitchDeckList
{
    public List<PitchDeck> Products { get; set; }
}
