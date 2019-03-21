<%@include file="/tracking.jsp" %>

<!DOCTYPE html>

<html lang="en">

  <head>

    <meta charset="UTF-8">
    <meta name="description" content="Talent Recruitment Solutions">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Smith Consulting Asia - Talent Recruitment Solutions</title>

    <link rel="icon" href="favicon.png">

    <style>

      html { height 90%; }
      body { height 90%; }
      footer { text-align: center; font-size: 80%; margin-top: 12vh; }
      .btn { border: 0; background: transparent; cursor: pointer; }

      .bg { background-image: url("smith.jpg"); background-size: 100px; background-attachment: fixed;
        // display: flex;
        // flex-direction: column;
        //justify-content: center;
      }

      .working-canvas { width: 90%; text-align: center; background-color: white; min-height: 95vh; height: auto; margin-left: auto; margin-right: auto;
       //padding-top: 50px; 
      }

      .grid-container { display: grid; grid-template-columns: auto auto auto; background-color: #023c6d; 
        //padding: 10px;
      }

      .grid-container-nav { display: grid; grid-template-columns: auto auto; //padding: 10px;
        //background-color: #2196F3; 
      }

      .grid-item { padding: 5%; font-size: 160%; color: white; text-align: center; border: none; 
        //background-color: rgba(255, 255, 255, 0.8);
      }

      .grid-item-link { cursor: pointer; }

      /* Creative commons attribution */
      .overlay { position: absolute; top: 615px; left: 110px; height: 3%; width: 50%; opacity: 0; transition: .05s ease; }
      .text { color: white; font-size: 12px; position: absolute; top: 35%; left: 30%; -webkit-transform: translate(-50%, -50%); -ms-transform: translate(-50%, -50%); transform: translate(-50%, -50%); }
      .container:hover .overlay { opacity: 1; transition: 20s ease;}
      .container { position: relative; }
      .text > a:link, .text > a:active, .text > a:visited, .text > a:hover { color: inherit; }


      .disclaimer { position: fixed; left: 0; bottom: 0.2%; width: 100%; background-color: grey; color: white; text-align: center;  }
      .close { color: #aaaaaa; float: right; font-size: 28px; font-weight: bold; margin-left: -10px; margin-right: 10px; }
      .close:hover, .close:focus { color: #000; text-decoration: none; cursor: pointer; }


      #backToTopBtn { display: none; position: fixed; bottom: 20px; right: 30px; z-index: 99; border: none; outline: none;  cursor: pointer; padding: 5px; width: auto; border-radius: 4px; }

      @media screen and (max-width: 600px) {
        .grid-item { padding: 5%; font-size: 100%; color: white; text-align: center; border: none; }
        .disclaimer { font-size: 60%; } 
      }

    </style>

    <script>

      topFunction = function () {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }

      showAboutUs = function () {
        document.getElementById ("bannercontainer").innerHTML = document.getElementById ("aboutus").innerHTML;
        document.getElementById ("bannercontainer").style.textAlign = "justify";
        document.getElementById ("bannercontainer").style.textJustify = "inter-word";
        document.getElementById ("bannercontainer").style.margin = "20px 20px 20px 20px"; 
        document.getElementById ("bannercontainer").scrollIntoView({ behavior: 'smooth', block: 'center' });
      }


      setCookie = function (cname, cvalue, exdays) {
        var d = new Date(); 
        d.setTime(d.getTime() + (exdays*24*60*60*1000));
        document.cookie = cname + "=" + cvalue + ";" + "expires=" + d.toUTCString() + ";path=/";
      }

      getCookie = function (cname) {
        var i, name = cname + "=", ca = decodeURIComponent(document.cookie).split(';');
        for (i = 0; i < ca.length; i++) {
          var c = ca[i];
          while (c.charAt(0) == ' ') c = c.substring(1);
          if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
        }
        return "";
      }

      checkCookie = function () {
        document.getElementById ("disclaimer").style.display = (getCookie("cookieAccepted") != "") ? "none" : "block";
      }


      disclaimer = function (loadpage, f, target) {

        fetch (loadpage, {
          method: 'post',
          headers: {
            'Content-type': 'application/x-www-form-urlencoded; charset=UTF-8'
          },
          body: new URLSearchParams(f)
        }).then(function(response) { 
          response.text().then(function(text) {
            document.getElementById (target).innerHTML = text;
            document.getElementById (target).scrollIntoView();
          });
        });

      } //

    </script>

  </head>

  <body onload="checkCookie ();">

    <img src="aupbl1.gif" style="width: 2%;" onclick="document.getElementById ('top').scrollIntoView({ behavior: 'smooth', block: 'start' });" id="backToTopBtn" title="Go to top" />


    <div id="bg" class="bg">

      <div class="working-canvas">

        <div style="background-image: url('mainbanner.jpg'); background-repeat: no-repeat; background-position: center; background-size: 100%; height: 500px;">
          <br><br>
          <img src="smith.jpg">  

          <br><br>

        </div>

        <div id="top" class="grid-container">
          <div class="grid-item" onclick="showAboutUs ();"><span class="grid-item-link">About Us</span></div>
          <div class="grid-item"></div>
          <div class="grid-item" onclick="window.open ('mailto:info@smithconsultingasia.com');"><span class="grid-item-link">Contact Us</span></div>  

          <div class="grid-item"><span class="grid-item-link">For Employers</span></div>
          <div class="grid-item"><span class="grid-item-link">For Jobseekers</span></div>
          <div class="grid-item"><span class="grid-item-link">For Candidates</span></div>  
        </div>


        <br>


        <br>

        <div>
          <span style="color: #023c6d;">Human Resource | Talent Search | Recruitment </span>
        </div>

        <br>

        <div id="bannercontainer" class="container" >
          <img src="vector-business-presentation.jpg" width="80%" alt="" title="" />
          <div class="overlay">
            <div class="text"><a href="http://VectorOpenStock.com" target="_blank">VectorOpenStock.com</a> Attribution Creative Commons 3.0 license</div>
          </div>
        </div>


        <footer>
          <a href="">Privacy Policy</a>
          <br>
          All rights reserved
        </footer>

      </div>

    </div>


    <div id="aboutus" style="display: none;">
      <h1 style="color: #023c6d; ">About Us</h1>
      A boutique executive search firm that was conceptualised at Smith Café joint by a team of passionate HR and IT professionals with a vision of providing customised executive search and sourcing advisory for companies. 
      Our role is to work with employers and job seekers to facilitate a successful match. 
      We focus on recruiting for junior, mid to senior level roles in the following sectors: FinTech, InsurTech, Finance & Insurance, Information Technology, Engineering & Manufacturing, Life Sciences, Oil & Gas, Human Resources, etc.<br>
      <br>
      Based on a survey* by Robert Half, it found that majority of Singapore's CFOs (98%) have hired an employee who did not meet expectations, with almost one-quarter (24%) said it took them two weeks to find out that the wrong person was chosen for the job. According to the survey, the most common reasons why new hires did not meet expectations include a mismatch of skills (43%), the candidate being underqualified (37%) or overqualified (35%) and a misalignment in attitude (34%).<br>
      <br>
      Another survey# by the U.S Department of Labour, the cost of hiring the wrong person for a role is at least 30% of the employee's first- year earnings, and be it a large or small company, it will have an impact causing projects to be off the timeline or leading to loss of business for the company.<br>
      <br>
      With a combined industry experience of over 50 years in various sectors, such as HR, insurance, Education, IT (testing & audit, software development, infrastructure), the team provides a broad experience and knowledge within different segment to source and place the right candidate.<br>
      <br>
      <div style="line-height: 8px;">
        <span style="font-size: 8px; ">
          *Source: https://www.roberthalf.com.sg/press/majority-singaporean-leaders-have-hired-wrong-person-job-research<br>
          #Source: https://www.jibe.com/ddr/cost-not-hiring-vs-cost-bad-hire/
        </span>
      </div>
    </div>


    <div id="disclaimer" class="disclaimer">
      <span class="close" title="Accept and Close" onclick="setCookie ('cookieAccepted', 'accepted', 30); document.getElementById ('disclaimer').style.display = 'none';">&times;</span>
      <br>
      This website uses cookies and similar technoloies to track your behavior and to improve your experience on the site. <br>
      By using our site, you acknowledge that you have read and understood and agreeing to our <br>
      <a style="color: inherit;" href="javascript:disclaimer ('cookies.html', '', 'bannercontainer');">Cookie Policy</a>, <a style="color: inherit;" href="javascript:disclaimer ('privacy.html', '', 'bannercontainer');">Privacy Policy</a>, and <a style="color: inherit;" href="">Terms of Service</a>. <br>
    </div>


    <script id="btnscript">
      window.onscroll = function() { 
        document.getElementById("backToTopBtn").style.display = (document.documentElement.scrollTop > 620) ? "block" : 'none';
                                            //                    (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) ? "block" : "none";
      }
    </script>

  </body>

</html>
