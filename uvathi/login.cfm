<!DOCTYPE html>
<html>
<head>
    <style>
       body{background-color:rgb(230, 233, 230);}
    </style>
</head>
<body>
        <form method="POST">
            <label for="id"> Enter ID </label>
            <input type="text" id="id" name="id"><br>
            <label for="username"> Enter Username </label>
            <input type="text" id="username" name="username" required="yes" ><br>
            <br>
            <label for="password"> Enter Password </label>
            <input type="password" id="password" name="password"><br>
            <br>
            <input type="submit" value="submit" name="submit">
        </form>
    </body>

<cfquery name="loginAdd" datasource="loginDSN">
    select * from logintable 
</cfquery>


<cfif isDefined('form.submit') >
<cfloop query="loginADD">
   <cfif loginADD.username EQ form.username AND loginADD.password EQ form.password>
    <cflocation url="emplist.cfm">
    <cfset session.userCHK=1>
   <cfelse>
    <cflocation url="error.cfm">
   </cfif>   
</cfloop>
</cfif>
</html>



