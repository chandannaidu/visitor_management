<html>
     <head>
        
        <title>re enter pwd</title>
        
        <style>
              h1{
                  font-size:45px;
                  color:whitesmoke;
                  position: absolute; 
                            visibility: visible; 
                            left: 500px; 
                            top: 500px; 
                            z-index: 200;
              }
           
             body{
                    background-image: url("ara.jpg");
                    background-repeat: no-repeat;
                    background-size: 100%;
                    font-size:300%;
                   color:/* #525252;*/black;
                   }
              .button {
                          display: inline-block;
                          border-radius: 30px;
                          background-color: limegreen;
                          border: none;
                          color: #ffff;
                          text-align: center;
                          font-size: 20px;
                          padding: 15px;
                          width: 150px;
                          height:50px;
                          transition: all 0.5s;
                          cursor: pointer;
                          margin: 10px;
                     }      
             .button1 {
                            display: inline-block;
                            border-radius: 30px;
                            background-color:red;
                            border: none;
                            color: #ffff;
                            text-align: center;
                            font-size: 20px;
                            padding: 15px;
                            width: 150px;
                            height:50px;
                            transition: all 0.5s;
                            cursor: pointer;
                            margin: 10px;
                      }
              .button span 
                            {
                                 cursor: pointer;
                                 display: inline-block;
                                 position: relative;
                                 transition: 0.5s;
                            }
                            .usr {
                                padding-right: 20px;
                                 background-color: transparent;
                                 border: 0px solid;
                                 height: 35px;
                                 width: 250px;
                                 color:#fff;
                                
                                 font-size: 100%;
                                 }
                              
/*               .usr input[type='text']
                            {
                                 color:red;
                                 border-bottom: none;
                                 border-left: none;
                                 border-right: none;
                                 border-top:none;
                            }*/


           .button span:after {
                                 content: '\00bb';
                                 position: absolute;
                                 opacity: 0;
                                 top: 0;
                                 right: -20px;
                                 transition: 0.5s;
                              }

           .button:hover span {
                                 padding-right: 25px;
                              }

         .button:hover span:after {
                                     opacity: 1;
                                     right: 0;
                                  }
                 #locator { position: absolute; 
                            visibility: visible; 
                            left: 800px; 
                            top: 50px; 
                            z-index: 200; }
                 #font{
                     font-size:40%;
                 }
                 
                 #divMayus{
                     color:red;
                 }  
                 #copy{
                     color:goldenrod;
                      position: absolute; 
                            visibility: visible; 
                            left: 560px; 
                            top: 850px; 
                            z-index: 200;
                            font-size:30%;
                 }
                 #gg{
                     color:red;
                     font-size: "60%";
                 }
           
             /* #a{
                  background-color:transparent;
                color:white;
                /*position:relative;
                bottom:30px;*/
             
            
            
              
              /*vm7 or vm8*/
              
            /*body{
                background-color:282827;
                color:E25D33;
            }*/
            </style>
             <script>
                  function confirmreset()
                  {

                     return confirm("Do you want to reset the form?");
                  }
                 function capLock(e){
                               kc = e.keyCode?e.keyCode:e.which;
                               sk = e.shiftKey?e.shiftKey:((kc == 16)?true:false);
                               if(((kc >= 65 && kc <= 90) && !sk)||((kc >= 97 && kc <= 122) && sk))
                               document.getElementById('divMayus').style.visibility = 'visible';
                               else
                               document.getElementById('divMayus').style.visibility = 'hidden';
                                 } 
                  function validate()
                                         if(document.getElementById("new_pass").value=="")
                                          {
                                             alert("PLZ PROVIDE NEW PASSWORD");
                                             document.getElementById("new_pass").focus();
                                             return false;
                                           }
                                           if(document.getElementById("con_pass").value=="")
                                           {
                                            alert("PLZ CONFIRM PASSWORD");
                                             document.getElementById("con_pass").focus();
                                             return false;
                                           }
                                           else  
                                           {  
                                              alert('Form Successfully Submitted');    
                                              return true;
                                           }
                                      }
          </script>
        </head>
        <body>
            <h1 align="center">REENTER PASSWORD</h1>
            <div id="locator"> 
           <form action="logincng">
                      <p id="font">User Name :
                      <input type="text" name="usr_name"  size="50%" class="usr" placeholder=""/>
                     <hr size="2%" width=120%"> 
                  <p id="font">New Password :
                      <input type="text" name="new_pass"  size="50%" class="usr" placeholder=""/>
                     <hr size="2%" width=120%"> 
             <p id="font">Confirm New Password :<input type="con_pass" name="pwd" onkeypress="capLock(event)" class="usr" placeholder="">
             <hr size="2%" width="120%">
            <button class="button1"  onclick="return(confirmreset());"><span>clear</span></button>
             <button class="button" onclick="validate()"><span>login</span></button>
                </form>
                <div id="gg">
                <p>${message}</p>
                </div>
                <div id="divMayus" style="visibility:hidden">Caps Lock is on.</div>
                </div>
            <p id="copy">Copyright's &#169;&#8482; 2017,Chandan Naidu.ALL Rights Reserved.</p>
        </body>
</html>
