<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style.css">
<style>
    body
            {
                background-color: green;
            }
            .head
            {
                margin: auto;
                width: 50%;
                border: 3px white;
                padding: 30px 50px 30px 0px;
                background-color:rgb(205, 231, 205);
                text-align:center;
                text-indent: 100px;
                font-family: Arial, Helvetica, sans-serif;
                
               
            }
            .center
            {
                margin: auto;
                width: 50%;
                border: 3px white;
                padding: 20px 50px 50px 0px;
                background-color:white;
                text-align:center;
                font-family: Arial, sans-serif;
            }
</style>
</head>
<body >
 
    <div class="head" >
        <h1>
                EMPLOYEE APPLICATION
        </h1>
    </div>
    <div class="center"  >
    <body >
    <form method="POST">
            <label for="username"> ENTER USERNAME </label>
            <input type="text" id="username" name="username" required="yes"><br>
            <br>
            <label for="password"> ENTER PASSWORD </label>
            <input type="password" id="password" name="password"><br>
            <br>
            <input type="submit" value="SUBMIT" name="submit" >
            <input type="reset" value="RESET" name="reset">
            <br>
            <br>
            <br>
            <cfoutput>
                #DateFormat(Now(), "ddd dd mmmm, yyyy")#
            </cfoutput>
    </div>
    </form>

    <cfif isDefined('form.submit')>
        <cfquery name="loginAdd" datasource="#application.DSN#">
            select * from logintable where username='#form.username#' and password='#form.password#'
        </cfquery>
         <cfif val(loginAdd.recordCount)>
            <cfset session.userCHK ="#loginAdd.id#">
            <cflocation url = "emplist.cfm" addtoken="false">
        <cfelse>
            <cflocation url = "error.cfm" addtoken="false">
        </cfif>
    </cfif>

    
    <!--- <cfdump var=#application.DSN#> 
<cfquery name="loginAdd" datasource="#application.DSN#">
select * from logintable
</cfquery>


    <cfif isDefined('form.submit') >
        <cfloop query="loginADD">
            <cfif loginADD.username EQ form.username AND loginADD.password EQ form.password>
                <cfset session.userCHK=1>
                <cflocation url="emplist.cfm" addtoken = "false">
            <cfelse>
                <cflocation url="error.cfm" addtoken = "false">
            </cfif>   
        </cfloop>
    </cfif> --->
    </body>
    </html>
    