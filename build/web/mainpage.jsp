

<!DOCTYPE html>
<html>
    <head>
       
        <title>home page</title>
        <style>
            /*body{
               background-color:#00FFFF;
                color:black;
            */
           #allin{
                position: absolute; 
                            visibility: visible; 
                            left: 1300px; 
                            top: 10px; 
                            z-index: 200;
            }
             #log{
                position: absolute; 
                            visibility: visible; 
                            left: 1300px; 
                            top:60px; 
                            z-index: 200;
                             display: inline-block;
                        border-radius: 20px;
                        background-color:red;
                        border: none;
                        color: #ffff;
                        text-align: center;
                        /*font-size: 13px;*/
                        padding: 15px;
                        width: 80px;
                        height:30px;
                        transition: all 0.5s;
                        cursor: pointer;
                        margin: 10px;
/*                        position: relative;
                        margin-right: 200px;
                        margin-top: 100px;*/
            }
            body{
                background-image: url("as6.jpg");
                background-repeat: no-repeat;
                background-size: 100%;
            }
            #a{
                background-color:black;
                color:white;
                border-color:"skyblue";
            } 
             #b{
                 background-color:skyblue;
                color:black;
            }
            #z{
                 position: absolute; 
                            visibility: visible; 
                            left: 550px; 
                            top: none; 
                          font-size: 250%;
               }
         #pos{
                           position:absolute; 
                            visibility: visible; 
                            left:10px; 
                            top:80px; 
                            z-index: 200;
               }
            .button {
                        display: inline-block;
                        border-radius: 20px;
                        background-color:lime;
                        border: none;
                        color:black;
                        text-align: center;
                        /*font-size: 13px;*/
                        padding: 15px;
                        width: 80px;
                        height:30px;
                        transition: all 0.5s;
                        cursor: pointer;
                        margin: 10px;
                    }
            .button1 {
                        position:absolute; 
                            visibility: visible; 
                            left:100px; 
                            top:165px; 
                            z-index: 200;
                        display: inline-block;
                        border-radius: 20px;
                        background-color:red;
                        border: none;
                        color: #ffff;
                        text-align: center;
                        /*font-size: 13px;*/
                        padding: 15px;
                        width: 80px;
                        height:30px;
                        transition: all 0.5s;
                        cursor: pointer;
                        margin: 10px;
            }
            h1{
                font-size: 40px;
                color: #525252;
            }
            #ass{
                 display: inline-block;
                        border-radius: 20px;
                        background-color:limegreen;
                        border: none;
                        color: black;
                        text-align: center;
                        /*font-size: 13px;*/
                        padding: 15px;
                        width: 120px;
                        height:30px;
                        transition: all 0.5s;
                        cursor: pointer;
                        margin: 10px;
                
            }
            #com{
                position:absolute; 
                            visibility: visible; 
                            left:450px; 
                            top:600px; 
                            z-index: 200;
                           background-color:lightyellow;
                            color:black;
                            font-size: 20px;
            }
             #tele{
                           position:absolute; 
                            visibility: visible; 
                            left:450px; 
                            top:580px; 
                            z-index: 200;
            }
            #mov{
                            position:absolute; 
                            visibility: visible; 
                            left:1300px; 
                            top:850px; 
                            z-index: 200;
            }
            </style>
    </head>
    <body>
        <h1 align="center">VISITOR MANAGEMENT</h1>
        <p id="allin"> <span id="spnDateTime" style="float:right;">TIME</span></p>
        <form onclick="return(confirmreset());" action="loginpage.jsp">
        <input id="log" type="submit" value="logout" style="float:right;">
        </form>
<!--        <form> 
          <td><textarea id="com" for="wats" rows="10" cols="90" font-family="bold"></textarea></td>
          <input type="submit" id="mov" value="submit">  
          </form> -->
        <form>
            <input id="chkParents" type="radio" name="myCheckbox" class="gender" onclick="selectOnlyThis(this)" value="0"><label>PARENTS</label><br/>
            <input id="chkMarketing" type="radio" name="myCheckbox" class="gender" onclick="selectOnlyThis(this)" value="1"><label>MARKETING AGENTS</label><br/>
             <table>
                 <tr>
                      <input type="radio" name="myCheckbox" onclick="selectOnlyThis(this)" value="2" class="gender"><label>STAFF</label>
                      <select id="ddlstaffType" name="staffs">
                       <option value="0">Select Staff's </option>
                       <option value="1">Lecturers</option>
                         <option value="2">Office Staff</option>
                         <option value="3">Bus Staff</option>
                         <option value="4">House Keeping</option>   
                   </select>
                 </tr>
             </table>
<!--           <input class="button" type="submit" onclick="fnNavigateUser();" value="login">-->
                    <input class="button1" type="reset" value="clear">
            </form>
       <input class="button" type="submit" onclick="fnNavigateUser();" value="login">
        <br/><br/>
        <table id="a" style="width:100%;"height="60%;" border="3">
            <h3>DETAILS OF VISITORS</h3>
            <tr id="b">
                <th width="3%">NO</th>
                <th width="6%">ID NO</th>
                <th width="16%">NAME</th>
                <th width="6%">DEPARTMENT</th>
                <th width="25%">PURPOSE OF VISIT</th>
                <th width="13%">PHONE NO</th>
                <th width="7%">ENTER TIME</th>
                <th width="7%">EXIT TIME</th>
            </tr>
            <tr>
                <td>1</td>
                <td></td>
                <td>chandan</td>
                <td></td>
                <td>to see his son </td>
                <td>9008994342</td>
                <td>12:10:20</td>
                <td></td>
            </tr>
             <tr>
                <td>2</td>
                <td>1ks15</td>
                <td>pradheep</td>
                <td>cse</td>
                <td></td>
                <td>9343616322</td>
                <td>14:36:45</td>
                <td></td>
            </tr>
             <tr>
                <td>3</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
             <tr>
                <td>4</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>5</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
         <tr>
                <td>6</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
             <tr>
                <td>7</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
             <tr>
                <td>8</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
             <tr>
                <td>10</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            </table>
            </table>
                    <br/>
<!--                    <label id="tele">&bullet;TELEPHONE</label>-->
       <h3>LIST GENERATION</h3>
       <form action="staffattendance.jsp;">  <td>&bullet; <LABEL><INPUT id="ass" type="submit" value=" Staff Attendence"></LABEL></form>
               <form action="visitorlist.jsp;"> <td>&bullet; <LABEL><INPUT id="ass" type="submit" value=" Visitor List"></LABEL></form>
           <form action="stafflist.jsp;" > <td>&bullet; <LABEL><INPUT id="ass" type="submit" value=" Staff List"></LABEL></form>
         <form action="managementlist.jsp;" > <td>&bullet; <LABEL><INPUT id="ass" type="submit" value=" marketing List"></LABEL></form>
         </body>
       <script type="text/javascript">
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
    
            function fnNavigateUser(){
                var checkedValue = null; 
        var inputElements = document.getElementsByClassName('gender');
        for(var i=0; inputElements[i]; ++i){
              if(inputElements[i].checked){
                   checkedValue = inputElements[i].value;
                   
                   
                if(checkedValue==="0"){
                    window.location = "./p_form.jsp";
                    return;
                    break;
                }
                else if(checkedValue==="1"){
                    window.location = "./m_form.jsp";
                    return;
                    break;
                }
                else if(checkedValue==="2"){
                    
                    var e = document.getElementById("ddlstaffType");
                    var strUser = e.options[e.selectedIndex].value;
                    if(strUser==="0"){
                        alert('PLEASE SELECT STAFF TYPE');
                        return false;
                    }
                    else if(strUser==="1"){
                        window.location = "./lectures_form.jsp";
                        return;
                        break;
                    }
                    else if(strUser==="2"){
                        window.location = "./officestaff_form.jsp";
                        return;
                        break;
                    }
                    else if(strUser==="3"){
                        window.location = "./bus_form.jsp";
                        return;
                        break;
                    }
                    else if(strUser==="4"){
                        window.location = "./house_form.jsp";
                        return;
                        break;
                    }
                }
                   break;
              }
        }
        if(checkedValue===null){
                    alert('Please select User Type');
                    return;
                }
    }
    
    function selectOnlyThis(id){
  var myCheckbox = document.getElementsByName("myCheckbox");
  Array.prototype.forEach.call(myCheckbox,function(el){
    el.checked = false;
  });
  id.checked = true;
}
  function confirmreset()
                  {

                     return confirm("Do you want to logout?");
                  }
    </script>
    
</html>