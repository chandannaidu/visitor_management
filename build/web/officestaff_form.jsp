
<html >

<head>

 
    <style>
           body{
                background-image: url("vm16.jpg");
                background-repeat: no-repeat;
                background-size: 100%;
                color:black;
         
              }
       /* body{
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
                     if(document.getElementById("staff_id").value=="")
                     {
                         alert("PLZ PROVIDE STAFF ID");
                         document.getElementById("staff_id").focus();
                         return false;
                     }
                     if(document.getElementById("staff_name").value=="")
                     {
                         alert("PLZ PROVIDE STAFF NAME");
                         document.getElementById("staff_name").focus();
                         return false;
                     }
                     if(document.getElementById("txtEntryTime").value=="")
                     {
                         alert("PLZ PROVIDE ENTRY TIME");
                         document.getElementById("txtEntryTime").focus();
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
    
    function fnSetEntryTime(){
        var ent_time = document.getElementById("txtEntryTime");
        ent_time.value = fnSetCurrentTime();
    }
    function fnSetExitTime(){
        var ent_time = document.getElementById("txtExitTime");
        ent_time.value = fnSetCurrentTime();
    }
    
    setInterval(function(){
    fnGetCurrentDateTime();
    },1000);
</script>
</head>

<body>

 

<center>

<h1>OFFICE STAFF FORM</h1>
<p id="pos"><a href="mainpage.jsp" class="previous round">&#8249;</a></p>
 <span id="spnDateTime" style="float:right;">TIME</span>

<form name="new" action="office_formback.jsp">

  

<table border='1' style="width:40%;"height=80%;">
 <tr>

  <td><LABEL for="staff_id">STAFF ID:<sup style="color:#F00">*</sup> </LABEL></td>

         <td><INPUT name="staff_id" type="text" id="staff_id"></td>

 </tr>
 <tr>

  <td><LABEL for="staff_name">STAFF NAME:<sup style="color:#F00">*</sup> </LABEL></td>

         <td><INPUT name="staff_name" type="text" id="staff_name"></td>

 </tr>

 <tr>
  <td><LABEL for="detail" style="text-align:left;">ANY DETAIL's: </LABEL></td>

  <td><textarea id="detail_m" name="detail" rows="15" cols="45"></textarea></td>

 </tr>

 <tr>
  <td><LABEL for="ent_t"><INPUT type="button" onclick="fnSetEntryTime();"  value="ENTRY TIME" id="ent_t"><sup style="color:#F00">*</sup> </LABEL><INPUT name="ent_t" id="txtEntryTime" type="text"></td>
   <td><LABEL for="ext_t"><INPUT type="button" onclick="fnSetExitTime();" value="EXIT TIME" id="ext_t"><sup style="color:#F00">*</sup> </LABEL><INPUT name="ext_t" id="txtExitTime" type="text"></td>
 </tr>

    </table>
    
    <br/><INPUT type="submit" onClick="return validate()" value="Submit">

  <INPUT type="reset" onClick="return confirmreset()">
  <br/><i style="color:red;font-size:12px;align:bottom right;" >* - Mandatory</i></p>

 </form></center>
 

</body>

</html>