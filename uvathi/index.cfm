<cfquery name="emplist" datasource="empDSN">
    select * from emptable 
</cfquery>

<cfdump var="#emplist#">
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
    <form action="insert_emp.cfm" method="post"> 
<div class="head" >
    <h1>
            EMPLOYEE APPLICATION
    </h1>
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
</body>