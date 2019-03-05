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
        PitchDeck p1 = new PitchDeck { ImgUrl = "../../images/PitchDecks/airbnb.jpeg", LinkUrl = " ../../docs/PitchDecks/airbnb.pdf" };
        PitchDeck p2 = new PitchDeck { ImgUrl = "../../images/PitchDecks/buzzfeed.jpeg", LinkUrl = " ../../docs/PitchDecks/buzzfeed.pdf" };
        PitchDeck p3 = new PitchDeck { ImgUrl = "../../images/PitchDecks/linkedin.jpeg", LinkUrl = "../../docs/PitchDecks/linkedin.pdf" };
        PitchDeck p4 = new PitchDeck { ImgUrl = "../../images/PitchDecks/moz.jpeg", LinkUrl = "../../docs/PitchDecks/moz.pdf" };
        PitchDeck p5 = new PitchDeck { ImgUrl = "../../images/PitchDecks/tinder.jpeg", LinkUrl = " ../../docs/PitchDecks/tinder.pdf" };
        PitchDeck p6 = new PitchDeck { ImgUrl = "../../images/PitchDecks/youtube.jpeg", LinkUrl = "../../docs/PitchDecks/youtube.pdf" };
        PitchDeck p7 = new PitchDeck { ImgUrl = "../../images/PitchDecks/facebook.jpeg", LinkUrl = "../../docs/PitchDecks/facebook.pdf" };
        PitchDeck p8 = new PitchDeck { ImgUrl = "../../images/PitchDecks/dropbox.jpeg", LinkUrl = "../../docs/PitchDecks/dropbox.pdf" };
        PitchDeck p9 = new PitchDeck { ImgUrl = "../../images/PitchDecks/uber.jpeg", LinkUrl = " ../../docs/PitchDecks/uber.pdf" };
        PitchDeck p10 = new PitchDeck { ImgUrl = "../../images/PitchDecks/snapchat.jpeg", LinkUrl = "../../docs/PitchDecks/snapchat.pdf" };
        PitchDeck p11 = new PitchDeck { ImgUrl = "../../images/PitchDecks/castle.jpeg", LinkUrl = "../../docs/PitchDecks/castle.pdf" };
        PitchDeck p12 = new PitchDeck { ImgUrl = "../../images/PitchDecks/buffer.jpeg", LinkUrl = " ../../docs/PitchDecks/buffer.pdf" };
        PitchDeck p13 = new PitchDeck { ImgUrl = "../../images/PitchDecks/fittr.jpeg", LinkUrl = "../../docs/PitchDecks/fittr.pdf" };

        PitchDeck p14 = new PitchDeck { ImgUrl = "../../images/PitchDecks/mixpanel.jpeg", LinkUrl = " ../../docs/PitchDecks/mixpanel.pdf" };
        PitchDeck p15 = new PitchDeck { ImgUrl = "../../images/PitchDecks/launchrock.jpeg", LinkUrl = "../../docs/PitchDecks/launchrock.pdf" };

        PitchDeck p16 = new PitchDeck { ImgUrl = "../../images/PitchDecks/canvas.jpeg", LinkUrl = " ../../docs/PitchDecks/canvas.pdf" };
        PitchDeck p17 = new PitchDeck { ImgUrl = "../../images/PitchDecks/dwolla.jpeg", LinkUrl = "../../docs/PitchDecks/dwolla.pdf" };
        PitchDeck p18 = new PitchDeck { ImgUrl = "../../images/PitchDecks/manpacks.jpeg", LinkUrl = "../../docs/PitchDecks/manpacks.pdf" };
        PitchDeck p19 = new PitchDeck { ImgUrl = "../../images/PitchDecks/steadybudget.jpeg", LinkUrl = " ../../docs/PitchDecks/steadybudget.pdf" };
        PitchDeck p20 = new PitchDeck { ImgUrl = "../../images/PitchDecks/swipes.jpeg", LinkUrl = " ../../docs/PitchDecks/swipes.pdf" };

        PitchDeck p21 = new PitchDeck { ImgUrl = "../../images/PitchDecks/questo.jpeg", LinkUrl = "../../docs/PitchDecks/questoai.pdf" };
        PitchDeck p22 = new PitchDeck { ImgUrl = "../../images/PitchDecks/mysql.jpeg", LinkUrl = " ../../docs/PitchDecks/mysql.pdf" };
        PitchDeck p23 = new PitchDeck { ImgUrl = "../../images/PitchDecks/mint.jpeg", LinkUrl = "../../docs/PitchDecks/mint.pdf" };
        PitchDeck p24 = new PitchDeck { ImgUrl = "../../images/PitchDecks/appvirality.jpeg", LinkUrl = "../../docs/PitchDecks/appvirality.pdf" };
        PitchDeck p25 = new PitchDeck { ImgUrl = "../../images/PitchDecks/yammer.jpeg", LinkUrl = " ../../docs/PitchDecks/yammer.pdf" };

        PitchDeck p26 = new PitchDeck { ImgUrl = "../../images/PitchDecks/intercom.jpeg", LinkUrl = " ../../docs/PitchDecks/intercom.pdf" };
        PitchDeck p27 = new PitchDeck { ImgUrl = "../../images/PitchDecks/ooomf.jpeg", LinkUrl = " ../../docs/PitchDecks/ooomf.pdf" };
        PitchDeck p28 = new PitchDeck { ImgUrl = "../../images/PitchDecks/flowtab.jpeg", LinkUrl = " ../../docs/PitchDecks/flowtab.pdf" };
        PitchDeck p29 = new PitchDeck { ImgUrl = "../../images/PitchDecks/mapme.jpeg", LinkUrl = "../../docs/PitchDecks/mapme.pdf" };
        PitchDeck p30 = new PitchDeck { ImgUrl = "../../images/PitchDecks/podozi.jpeg", LinkUrl = "../../docs/PitchDecks/podozi.pdf" };




        PitchDeck p31 = new PitchDeck { ImgUrl = "../../images/PitchDecks/urjakart.jpeg", LinkUrl = " ../../docs/PitchDecks/urjakart.pdf" };
        PitchDeck p32 = new PitchDeck { ImgUrl = "../../images/PitchDecks/foursquare.jpeg", LinkUrl = "../../docs/PitchDecks/foursquare.pdf" };
        PitchDeck p33 = new PitchDeck { ImgUrl = "../../images/PitchDecks/instamojo.jpeg", LinkUrl = "../../docs/PitchDecks/instamojo.pdf" };
        PitchDeck p34 = new PitchDeck { ImgUrl = "../../images/PitchDecks/gusto.jpeg", LinkUrl = "../../docs/PitchDecks/gusto.pdf" };
        PitchDeck p35 = new PitchDeck { ImgUrl = "../../images/PitchDecks/square.jpeg", LinkUrl = "../../docs/PitchDecks/square.pdf" };

        PitchDeck p36 = new PitchDeck { ImgUrl = "../../images/PitchDecks/pendo.jpeg", LinkUrl = "../../docs/PitchDecks/pendo.pdf" };
        PitchDeck p37 = new PitchDeck { ImgUrl = "../../images/PitchDecks/locussh.jpeg", LinkUrl = "../../docs/PitchDecks/locussh.pdf" };
        PitchDeck p38 = new PitchDeck { ImgUrl = "../../images/PitchDecks/fynd.jpeg", LinkUrl = " ../../docs/PitchDecks/fynd.pdf" };
        PitchDeck p39 = new PitchDeck { ImgUrl = "../../images/PitchDecks/front.jpeg", LinkUrl = "../../docs/PitchDecks/front.pdf" };
        PitchDeck p40 = new PitchDeck { ImgUrl = "../../images/PitchDecks/mattermark.jpeg", LinkUrl = " ../../docs/PitchDecks/mattermark.pdf" };

        PitchDeck p41 = new PitchDeck { ImgUrl = "../../images/PitchDecks/adpushup.jpeg", LinkUrl = " ../../docs/PitchDecks/adpushup.pdf" };
        PitchDeck p42 = new PitchDeck { ImgUrl = "../../images/PitchDecks/wealthsimple.jpeg", LinkUrl = " ../../docs/PitchDecks/wealthsimple.pdf" };


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
