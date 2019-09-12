<html>
    <head>
        <title>admin page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body{
                    background-image: url("vm1.jpg");
                    background-repeat: no-repeat;
                    background-size: 100%;
/*                    font-size:300%;*/
                    color: /*#525252;*/white;
                   }
                   h1{
                       color: #dde1e2;
                       font-size:60px;
                   }
                     #log{
                         float:right;
                          }
              #allin{
                position: absolute; 
                            visibility: visible; 
                            left: 1300px; 
                            top: 10px; 
                            z-index: 200;
                            color:deeppink;
            }
             #copy{
                     color:goldenrod;
                      position: absolute; 
                            visibility: visible; 
                            left: 550px; 
                            top: 840px; 
                            z-index: 200;
                            font-size:15px;
                 }
               body {margin:0;}

            .topnav {
                     overflow: hidden;
                    background-color: orangered;
                 }

           .topnav a {
                       float: left;
                       display: block;
                       color: #f2f2f2;
                       text-align: center;
                       padding: 14px 25px;
                       text-decoration: none;
                       font-size: 17px;
                     }

            .topnav a:hover {
                       background-color: #ddd;
                       color: black;
                            }

              .topnav a.active {
                   background-color: black;
                   color: white;
                               }

                               
                               
                               .dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
   #com{
                position:absolute; 
                            visibility: visible; 
                            left:10px; 
                            top:360px; 
                            z-index: 200;
                            background-color:lightyellow;
                            color:black;
                            font-size: 20px;
            }
             #tele{
                           position:absolute; 
                            visibility: visible; 
                            left:10px; 
                            top:340px; 
                            z-index: 200;
                            font-size: 15px;
            }
            #mov{
                 position:absolute; 
                            visibility: visible; 
                            left:220px; 
                            top:835px; 
                            z-index: 200;
            }
            #tt{
/*                color:orangered;*/
                  color:#E9BF00;
               font-size: 25px;
                position:absolute; 
                visibility: visible; 
                left:600px; 
                top:166px; 
                z-index:200;
                /* #ebc846*/
            }
        </style>
          <script>
              function confirmreset()
                  {

                     return confirm("Do you want to logout?");
                  }
                         function fnGetCurrentDateTime(){
       var currentdate = new Date(); 
        var datetime = "Date : " + currentdate.getDate() + "/"
                + (currentdate.getMonth()+1)  + "/" 
                + currentdate.getFullYear() + "<br/>" 
                + "Time : "+ currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
            document.getElementById("spnDateTime").innerHTML = datetime;
    }
    
    setInterval(function(){
    fnGetCurrentDateTime();
    },1000);
        </script>
    </head>
    <body>
            <h1 align="center">VISITOR MANAGEMENT</h1>
             <p id="copy">Copyright's &#169;&#8482; 2017,Chandan Naidu.ALL Rights Reserved.</p>
            <p id="allin"> <span id="spnDateTime" style="float:right;">TIME</span></p>
<!--            <form onclick="return(confirmreset());" action="loginpage.jsp">-->
<!--             <input id="log" type="submit" value="logout" action="loginpage.jsp" style="float:right;">-->
             <div class="topnav">
                     <form>
                     <a class="active" href="admin.jsp">Home</a>
                     <a href="about.jsp">About us</a>
                       <div class="dropdown">
                          <button class="dropbtn">Edit staff
                              <i class="fa fa-caret-down"></i>
                           </button>
                         <div class="dropdown-content">
                             <a href="adlect.jsp">Lecturers</a>
                             <a href="adoffice.jsp">Office Staff</a>
                             <a href="adbus.jsp">Bus Staff</a>
                             <a href="adhouse.jsp">House Keeping </a>
                         </div>
                       </div>
                     <div class="dropdown">
                          <button class="dropbtn">View Info
                              <i class="fa fa-caret-down"></i>
                           </button>
                          <div class="dropdown-content">
                             <a href="adparents.jsp">parent's</a>
                             <a href="admanagementlist.jsp">marketing agent's</a>
                             <a href="adstafflist.jsp">Collage Staff</a>
                         </div>
                       </div> 
                       <div class="dropdown">
                          <button class="dropbtn">Security
                              <i class="fa fa-caret-down"></i>
                           </button>
                         <div class="dropdown-content">
                             <a href="cngpwd.jsp">Change Password</a>
                             <a href="#">Break In Attempts</a>
                         </div>
                       </div> 
                     <a href="license.jsp">License</a>
                     <a href="help.jsp">Help</a>
                     <a href="#">Chat</a>
                     <a href="loginpage.jsp" onclick="confirmreset();" id="log">Logout</a>
                     </form>
             </div>
         <label id="tele">&bullet;TELEPHONE</label>
          <form> 
          <td><textarea id="com" for="wats" rows="20" cols="26" font-family="bold"></textarea></td>
          <input type="submit" id="mov" value="submit">
          </form>
         <div id="td">
         <marquee id="tt" direction="up" behavior="scroll" width="700px" height="670px" loop="infinity">
           The Kammavari Sangham, a multi-activity non-profit oriented voluntary service organization, was established in the year 1952 with the sole objective of providing charitable service to community and society. With a firm belief
           that quality and meaningful education only can lay the strong foundation for bringing about economic and social changes to the lives of thousand, the Sangham went about establishing educational institutions, 
           starting with K.S. Polytechnic in 19The Sangham has diversified its activities. Enthused with this success of its foray into technical education, the Sangham moved forward by starting the K.S Institute of Technology (KSIT). 
           Its Engineering College in the year 1999. In the following years both these institutions have carved for themselves an enviable niche through academic excellence achieved in a very short span of time. By providing FREE hostel 
           accommodation and scholarship to the deserving students in the community, it has furthered its Commitment to education.Apart from the educational initiatives, on the cultural front, the Sangham has ventured to build and manage
           Convention centers. These serve as venues for community cultural events including conducting of mass marriages among the economically underprivileged in the Kamma Community.Towards encouraging and nourishing entrepreneurial trait
           among the community members, the Sangham also started Kammavari Credit Co-operative Society to mobilize deposits and finance enterprises.
         </marquee>
         </div>
    </body>
</html>
<!-- <div class="dropdown-content">
                             <a href="advisitors.jsp">visitors</a>
                             <a href="adstaff.jsp">Collage Staff</a>
                         </div>-->