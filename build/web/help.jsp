<%-- 
    Document   : help
    Created on : Nov 5, 2017, 12:06:23 PM
    Author     : Advaith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                    background-image: url("vm1.jpg");
                    background-repeat: no-repeat;
                    background-size: 100%;
/*                    font-size:300%;*/
                    color: /*#525252;*/white;
                   }
                    h1{
                       color:orangered;
                       font-size: 70px;
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
    </head>
    <body>
        <h1 align="center">HELP DESK</h1>
         <p id="pos"><a href="admin.jsp" class="previous round">&#8249;</a></p>

    </body>
</html>
