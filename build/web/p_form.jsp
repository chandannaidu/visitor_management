<html>

<head>

 
    <style>
                     body{
                background-image: url("vm16.jpg");
                background-repeat: no-repeat;
                background-size: 100%;
                color:black;
         
              }
        /*body{
            background-color:FFFBD0;
                color:black;
        }*/
        table{
            background-color:transparent;
                color:black;
        }
        a {
    text-decoration: none;
    display: inline-block;
    padding: 8px 16px;
}

a:hover {
    background-color: #ddd;
    color: black;
}

.previous {
    background-color:  #4CAF50;
    color: black;
}
.round {
    border-radius: 50%;
}
#pos{
    position: absolute; 
                            visibility: visible; 
                            left: 30px; 
                            top: 40px; 
                            z-index: 200;
}
    </style>

    <script>
        function validate()
                 {
                     if(document.getElementById("firstname").value=="")
                     {
                         alert("PLZ PROVIDE FIRST NAME");
                         document.getElementById("firstname").focus();
                         return false;
                     }
                     if(document.getElementById("lastname").value=="")
                     {
                         alert("PLZ PROVIDE LAST NAME");
                         document.getElementById("lastname").focus();
                         return false;
                     }
                      if(document.getElementById("p_o_v").value=="")
                     {
                         alert("PLZ PROVIDE PURPOSE OF VISIT");
                         document.getElementById("p_o_v").focus();
                         return false;
                     }
                      if(document.getElementById("contctno").value=="")
                     {
                         alert("PLZ PROVIDE CONTACT NUMBER");
                         document.getElementById("contctno").focus();
                         return false;
                     }
                        if(document.getElementById("email").value=="")
                     {
                         alert("PLZ PROVIDE EMAIL ID");
                         document.getElementById("email").focus();
                         return false;
                     }
                        if(document.getElementById("txtEntryTime").value=="")
                     {
                         alert("PLZ PROVIDE ENTRY TIME");
                         document.getElementById("txtEntryTime").focus();
                         return false;
                     }
                          if(document.getElementById("txtDate").value=="")
                     {
                         alert("PLZ PROVIDE CURRENT DATE");
                         document.getElementById("txtDate").focus();
                         return false;
                     }
                   else  
                      {  
                         alert('Form Successfully Submitted');  
                         window.location.reload()  
                         return true;
                      } 
             }
             
 function confirmreset()
 {

  return confirm("Do you want to reset the form?");
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
    
    function fnSetCurrentTime(){
         var currentdate = new Date(); 
       var timest =currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
        return timest;
    }
      
    function fnSetCurrentDate(){
//         var currentdate = new Date(); 
       var today = new Date();
       var datest = today.getFullYear() + "-"  
                +  today.getDate()+ "-" //jan=0
                + (today.getMonth()+1);
        return datest;
    }
    
    function fnSetEntryTime(){
        var ent_time = document.getElementById("txtEntryTime");
        ent_time.value = fnSetCurrentTime();
    }
    function fnSetExitTime(){
        var ext_time = document.getElementById("txtExitTime");
        ext_time.value = fnSetCurrentTime();
    }
     function fnSetDate(){
        var date = document.getElementById("txtDate");
        date.value = fnSetCurrentDate();
    }
    
    setInterval(function(){
    fnGetCurrentDateTime();
    },1000);
</script>
</head>

<body>
<center>
<h1>PARENTS FORM</h1>
<p id="pos"><a href="mainpage.jsp" class="previous round">&#8249;</a></p>
 <span id="spnDateTime" style="float:right;">TIME</span>

<form name="new" action="p_formback.jsp">

  

<table border='1' style="width:40%;"height=80%;">

 <tr>

  <td><LABEL for="firstname">First Name:<sup style="color:#F00">*</sup> </LABEL></td>

  <td><INPUT name="firstname" type="text" id="firstname"></td>

 </tr>

 <tr>

  <td><LABEL for="lastname">Last Name:<sup style="color:#F00">*</sup> </LABEL></td>

  <td><INPUT name="lastname" type="text" id="lastname"></td>

 </tr>
 <tr>
     <td><LABEL for="gender">Gender:<sup style="color:#F00">*</sup> </LABEL></td> <td><INPUT type="radio" name="gender"  checked="checked" value="m"> Male

   <INPUT type="radio" name="gender" value="f"> Female </td>
 </tr>

 <tr>
  <td><LABEL for="p_o_v" style="text-align:left;">purpose of visit:<sup style="color:#F00">*</sup> </LABEL></td>

  <td><textarea id="p_o_v" name="p_o_v" rows="4" cols="20"></textarea></td>

 </tr>

 <tr>

  <td><LABEL for="contctno">Contact Number:<sup style="color:#F00">*</sup> </LABEL></td>

  <td><INPUT type="text" name="contctno" maxlength="10" id="contctno"></td>

 </tr>

 <tr>

  <td><LABEL for="email">Email:<sup style="color:red;">*</sup> </LABEL></td>

  <td><INPUT type="text" name="email" id="email" placeholder="example@gmail.com"></td>

 </tr>
 <tr>
  <td><LABEL for="ent_t" id="ent_t"><INPUT type="button" name="ent_t" onclick="fnSetEntryTime();" value="ENTRY TIME" id="ent_t"><sup style="color:#F00">*</sup> </LABEL><INPUT id="txtEntryTime" name="ent_t" type="text"></td>
   <td><LABEL for="ext_t"><INPUT type="button" name="ext_t" onclick="fnSetExitTime();" value="EXIT TIME" id="ext_t"><sup style="color:#F00">*</sup> </LABEL><INPUT id="txtExitTime" name="ext_t" type="text"></td>
 </tr>
<!-- <tr>
        <td><LABEL for="date"><INPUT type="button" name="date" onclick="fnSetDate();" value="DATE" id="date"><sup style="color:#F00">*</sup> </LABEL><INPUT id="txtDate" name="date" type="text"></td>
 </tr>-->

    </table>
    
    <br/><INPUT type="submit" onclick="return(validate());" value="Submit">

  <INPUT type="reset" onClick="return confirmreset()">
  <br/><i style="color:red;font-size:12px;align:bottom right;" >* - Mandatory</i></p>

 </form></center>
 

</body>

</html>
<!--onClick="return validate()"-->
