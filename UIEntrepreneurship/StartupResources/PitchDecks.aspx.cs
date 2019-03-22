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
        PitchDeck p1 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/airbnb.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/airbnb.pdf" };
        PitchDeck p2 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/buzzfeed.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/buzzfeed.pdf" };
        PitchDeck p3 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/linkedin.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/linkedin.pdf" };
        PitchDeck p4 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/moz.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/moz.pdf" };
        PitchDeck p5 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/tinder.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/tinder.pdf" };
        PitchDeck p6 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/youtube.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/youtube.pdf" };
        PitchDeck p7 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/facebook.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/facebook.pdf" };
        PitchDeck p8 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/dropbox.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/dropbox.pdf" };
        PitchDeck p9 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/uber.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/uber.pdf" };
        PitchDeck p10 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/snapchat.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/snapchat.pdf" };
        PitchDeck p11 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/castle.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/castle.pdf" };
        PitchDeck p12 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/buffer.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/buffer.pdf" };
        PitchDeck p13 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/fittr.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/fittr.pdf" };
        PitchDeck p14 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/mixpanel.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/mixpanel.pdf" };
        PitchDeck p15 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/launchrock.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/launchrock.pdf" };

        PitchDeck p16 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/canvas.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/canvas.pdf" };
        PitchDeck p17 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/dwolla.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/dwolla.pdf" };
        PitchDeck p18 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/manpacks.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/manpacks.pdf" };
        PitchDeck p19 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/steadybudget.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/steadybudget.pdf" };
        PitchDeck p20 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/swipes.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/swipes.pdf" };

        PitchDeck p21 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/questo.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/questoai.pdf" };
        PitchDeck p22 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/mysql.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/mysql.pdf" };
        PitchDeck p23 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/mint.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/mint.pdf" };
        PitchDeck p24 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/appvirality.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/appvirality.pdf" };
        PitchDeck p25 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/yammer.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/yammer.pdf" };

        PitchDeck p26 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/intercom.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/intercom.pdf" };
        PitchDeck p27 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/ooomf.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/ooomf.pdf" };
        PitchDeck p28 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/flowtab.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/flowtab.pdf" };
        PitchDeck p29 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/fynd.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/fynd.pdf" };
        PitchDeck p30 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/mattermark.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/mattermark.pdf" };

        PitchDeck p31 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/urjakart.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/urjakart.pdf" };
        PitchDeck p32 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/foursquare.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/foursquare.pdf" };
        PitchDeck p33 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/instamojo.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/instamojo.pdf" };
        PitchDeck p34 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/gusto.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/gusto.pdf" };
        PitchDeck p35 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/square.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/square.pdf" };

        PitchDeck p36 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/pendo.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/pendo.pdf" };
        PitchDeck p37 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/locussh.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/locussh.pdf" };
        PitchDeck p38 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/front.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/front.pdf" };
        PitchDeck p39 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/mapme.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/mapme.pdf" };
        PitchDeck p40 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/podozi.jpeg", LinkUrl = "../../docs/Entrepreneurship/PitchDecks/podozi.pdf" };

        PitchDeck p41 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/adpushup.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/adpushup.pdf" };
        PitchDeck p42 = new PitchDeck { ImgUrl = "../../images/Entrepreneurship/PitchDecks/wealthsimple.jpeg", LinkUrl = " ../../docs/Entrepreneurship/PitchDecks/wealthsimple.pdf" };


        List<PitchDeck> pitchdecks = new List<PitchDeck>();
        pitchdecks.Add(p1); pitchdecks.Add(p2); pitchdecks.Add(p3);pitchdecks.Add(p4); pitchdecks.Add(p5); pitchdecks.Add(p6); pitchdecks.Add(p7);
        pitchdecks.Add(p8); pitchdecks.Add(p9); pitchdecks.Add(p10); pitchdecks.Add(p11); pitchdecks.Add(p12); pitchdecks.Add(p13); pitchdecks.Add(p14);
        pitchdecks.Add(p15); pitchdecks.Add(p16); pitchdecks.Add(p17); pitchdecks.Add(p18); pitchdecks.Add(p19); pitchdecks.Add(p20); pitchdecks.Add(p21);
        pitchdecks.Add(p22); pitchdecks.Add(p23); pitchdecks.Add(p24); pitchdecks.Add(p25); pitchdecks.Add(p26); pitchdecks.Add(p27); pitchdecks.Add(p28);
        pitchdecks.Add(p29); pitchdecks.Add(p30); pitchdecks.Add(p31); pitchdecks.Add(p32); pitchdecks.Add(p33); pitchdecks.Add(p34); pitchdecks.Add(p35);
        pitchdecks.Add(p36); pitchdecks.Add(p37); pitchdecks.Add(p38); pitchdecks.Add(p39); pitchdecks.Add(p40); pitchdecks.Add(p41); pitchdecks.Add(p42);


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
