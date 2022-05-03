<cfquery name="customerListAll" datasource="studDSN">
    select * from stud_Reg 
</cfquery>

<cfdump var="#customerListAll#">
<html>
    <head>
        <title>customerdetail</title>
        <style> 
        table ,th, td
        {
            border: 1px solid black;
            border-collapse: collapse;
        }
        </style>
    </head>
    <body>
        <a href="customer_Form.cfm">ADD RECORD</a>
        <h1> CUSTOMER DETAILS</h1>
        <table>
            <tr>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>CUSTOMER AGE</th>
                <th>DEPARTMENT</th>
                <th colspan="2">ACTION</th>
            </tr>
            <cfoutput query="customerListAll" >
                <tr>
                    <td>#FNAME#</td>
                    <td>#LASTNAME#</td>
                    <td>Blank</td>
                    <td>#STREAM#</td>
                    <td><a href="cusEdit.cfm?id=#STUD_ID#">Edit</a></td>
                    <td><a href="cusDelete.cfm?id=#STUD_ID#">Delete</a></td>
                </tr>
            </cfoutput>
        </table>
        <br>
    </body>
</html>



