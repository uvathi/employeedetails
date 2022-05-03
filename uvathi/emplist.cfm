
<!--- <cfif session.userCHK EQ 1> 
<cfif val(session.userCHK )>
   <cfif structKeyExists(SESSION, "userCHK")>
        <cfset LoggedAccountID = SESSION.userCHK.AccountID>
        <cfset isAdmin = SESSION.userCHK.SysAdmin EQ 1 ? true : false>
    <cfelse>
        
        <cfabort>
    </cfif> --->


<cfparam name="url.id" default=0>
<cfset emplist=application.employee.listAll()>

<html>
    <head>
        <style>
            body
            {
                background-color: green;
            }
            .head
            {
                margin: auto;
                width: 100%;
                border: 3px white;
                padding: 0px 50px 0px 0px;
                background-color:rgb(205, 231, 205);
                text-align:center;
                text-indent: 50px;
               
            }
            .center
            {
                margin: auto;
                width: 100%;
                padding: 50px 0px 50px 50px;
                background-color:white;
                
            }
            table, th, td
            {
                border: 1px solid black;
                border-collapse: collapse;
                
            }
            
</style>
</head>
<body>
   
<div class="head" >
    <h1>
            EMPLOYEE APPLICATION
    </h1>
    <a href="employee.cfm"> <button type="button" onclick="employee.cfm" >ADD RECORD</button> </a>
    <a href="file.cfm"> <button type="button" onclick="file.cfm" >ADD FILE</button> </a>
    <a href="logout.cfm"> <button type="button" onclick="logout.cfm">LOG OUT</button> </a>
    
    
    
    <div class="center"  style="overflow-x: auto;">
    <table>
        <tr>
            <th>emp position</th>
            <th>EMP LOCATION</th>
            <th>EMP DATE</th>
            <th>EMPWEBSITE</th>
            <th>EMPSALARY</th>
            <th>EMPMAIL</th>
            <th>EMPCONTACT</th>
            <th>EMPNAME</th>
            <th colspan="2">ACTION</th>
        </tr>
        <cfoutput query="emplist" >
            <tr>
                <td>#EMPPOSITION#</td>
                <td>#EMPLOCATION#</td>
                <td>#EMPDATE#</td>
                <td>#EMPWEBSITE#</td>
                <td>#EMPSALARY#</td>
                <td>#EMPMAIL#</td>
                <td>#EMPCONTACT#</td>
                <td>#EMPNAME#</td>
                <td><a href="empEdit.cfm?id=#EMPID#">Edit</a></td>
                <td><a href="empDelete.cfm?id=#EMPID#">Delete</a></td>
            </tr>
        </cfoutput>
    </table>
    </div>
    <br>

    
   
   
    </body>
   
<cfset y= structNew()>
<cfset y.a=2>
<cfset y.b=2>

<cfset x= application.employee.multiply(y)>
<cfoutput>
    #x#
</cfoutput>
<!--- <cfelse>
    <cflocation url="emplogin.cfm">
</cfif> --->
