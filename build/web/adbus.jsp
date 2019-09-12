<html>
<head>

 
    <style>
           body{
                background-image: url("adform.png");
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
        a{
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
                     if(document.getElementById("dpt").value=="")
                     {
                         alert("PLZ PROVIDE DEPARTMENT");
                         document.getElementById("dpt").focus();
                         return false;
                     }
                     if(document.getElementById("staff_name").value=="")
                     {
                         alert("PLZ PROVIDE STAFF NAME");
                         document.getElementById("staff_name").focus();
                         return false;
                     }
                      if(document.getElementById("address").value=="")
                     {
                         alert("PLZ PROVIDE STAFF address");
                         document.getElementById("address").focus();
                         return false;
                     }
                       if(document.getElementById("phone_no").value=="")
                     {
                         alert("PLZ PROVIDE STAFF PHONE NUMBER");
                         document.getElementById("phone_no").focus();
                         return false;
                     }
                       if(document.getElementById("blood_g").value=="")
                     {
                         alert("PLZ PROVIDE STAFF BLOOD GROUP");
                         document.getElementById("blood_g").focus();
                         return false;
                     }
                       if(document.getElementById("bus_no").value=="")
                     {
                         alert("PLZ PROVIDE STAFF BUS NUMBER");
                         document.getElementById("bus_no").focus();
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
    
    setInterval(function(){
    fnGetCurrentDateTime();
    },1000);
</script>
</head>

<body>

 

<center>

<h1>BUS DRIVER FORM</h1>
<p id="pos"><a href="admin.jsp" class="previous round">&#8249;</a></p>
 <span id="spnDateTime" style="float:right;">TIME</span>

<form name="new" action="adbusback.jsp">

  

<table border='1' style="width:40%;"height=80%;">
 <tr>

  <td><LABEL for="staff_id">STAFF ID:<sup style="color:#F00">*</sup> </LABEL></td>

         <td><INPUT name="staff_id" type="text" id="staff_id"></td>

 </tr>
 <tr>


 <tr>

  <td><LABEL for="staff_name">STAFF NAME:<sup style="color:#F00">*</sup> </LABEL></td>

         <td><INPUT name="staff_name" type="text" id="staff_name"></td>

 </tr>

 <tr>
  <td><LABEL for="address" style="text-align:left;">ADDRESS: </LABEL></td>

  <td><textarea name="address" id="address"  rows="15" cols="45"></textarea></td>

 </tr>
  <tr>
  <td><LABEL for="phone_no" style="text-align:left;">PHONE NUMBER </LABEL></td>

  <td><textarea name="phone_no" id="phone_no" maxlength="10"></textarea></td>

 </tr>
  <tr>
  <td><LABEL for="blood_g" style="text-align:left;">BLOOD GROUP </LABEL></td>

  <td><INPUT name="blood_g" id="blood_g" maxlength="5"></td>
  </tr>
  <tr>
    <td><LABEL for="bus_no">BUS NUMBER:<sup style="color:#F00">*</sup> </LABEL></td>

         <td><INPUT name="bus_no" type="text" id="bus_no" maxlength="12"></td>

 </tr>

    </table>
    
    <br/><INPUT type="submit" onClick="return validate()" value="Submit">

  <INPUT type="reset" onClick="return confirmreset()">
  <br/><i style="color:red;font-size:12px;align:bottom right;" >* - Mandatory</i></p>

 </form></center>
 

</body>

</html>

