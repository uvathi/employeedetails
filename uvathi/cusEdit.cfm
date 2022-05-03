<cfdump var="url">

<cfif isDefined('form.submit') >

    <cfdump var="#form#">

<cfquery name="studentAdd" datasource="studDSN">
    update stud_Reg set Fname='#form.FNAME#', lastname='#form.LASTNAME#', gender='#form.GENDER#', stream='#form.DOMAIN#', domain='#form.C1#' where STUD_ID=#url.id# 

    </cfquery>
    <cflocation url="customerList.cfm">
</cfif>


   <cfquery name="customerList1" datasource="studDSN">
        select * from stud_Reg where STUD_ID=#url.id# 
    </cfquery>

    <cfdump var="#customerList1#">
    

    <!DOCTYPE html>
<html>
    <head>
        <style>
            body
            {
                background-color: mistyrose;
            }
        h4
        {
            text-align: center;
            padding: 30px;
            color: olive;
            size: 60px;
        }
        tr:nth-child(even)
        {
            background-color: thistle;
        }
        tr:nth-child(odd)
        {
            background-color: plum;
        }
        td:nth-child(odd)
        {
        background-color: powderblue;
        }
        th, td {
  padding: 15px;
}
tr, td{
    padding: 15px;
}
        </style>
    </head>
    <body>
        <h4> STUDENT REGISTRATION FORM </h4>
<cfoutput >


        <form  method="post"> 
        <label for="fname">FIRST NAME   </label>
        <input type="text" id="fname" name="fname" value="#customerList1.FNAME#">
        <br><br>
        <label for="lastname">LAST NAME  </label>
        <input type="text" id="lastname" name="lastname" value="#customerList1.LASTNAME#">
        <br>
        <br>
        <label for="gender">GENDER  </label>
        <input type="radio" id="gender" name="gender" value="male" <cfif #customerList1.GENDER# EQ 'MALE'>checked</cfif>>
        <label for="male" >MALE</label>
    
        <input type="radio" id="gender" name="gender" value="female" <cfif #customerList1.GENDER# EQ 'FEMALE'>checked</cfif>>
        <label for="female">FEMALE</label>
        <br>
        <br>
        <label for="stream">STREAM  </label>
        <input type="checkbox" id="c1" name="c1" value="science" <cfif #customerList1.STREAM# EQ 'science'>checked</cfif>>
        <label for="science">SCIENCE</label>
        
        <input type="checkbox" id="c1" name="c1" value="MATHS" <cfif #customerList1.STREAM# EQ 'MATHS'>checked</cfif>>
        <label for="maths">MATHS</label>
        
        <input type="checkbox" id="c1" name="c1" value="computer" <cfif #customerList1.STREAM# EQ 'computer'>checked</cfif>>
        <label for="computer">COMPUTER</label>
        <br>
        <br>
        <label for="domain" >MEDIUM</label>
    <select  id="d1" name="domain">
        <option  <cfif #customerList1.DOMAIN# EQ 'TAMIL'>selected</cfif> value="TAMIL"> TAMIL</option>
        <option <cfif #customerList1.DOMAIN# EQ 'ENGLISH'>selected</cfif> value="ENGLISH" >ENGLISH</option>
    </select>
    <br>
    <br>
        <label for="f1">SELECT A FILE  </label>
        <input type="file" id="f1" name="f1" >
        
        <br>
        <br>

    
    <br>
    <br>
        <input type="submit" value="SUBMIT" name="submit">
        <input type="reset" value="RESET">
        

        
   
    </form>
</cfoutput>
    </body>
</html>

