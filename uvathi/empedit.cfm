        
<!--- <cfdump var=#session#><cfabort>
<cfif session.userCHK EQ 1>
<cfparam name="url.id" default=0> --->

<cfset emp_edit=application.employee.listOne(#url.id#) >
<cfdump var="url">
<cfif isDefined('form.submit') >
<cfdump var="#form#">
<cfquery name="empAdd" datasource="empDSN">
    update emptable set 
    empposition='#form.EMPPOSITION#',
    emplocation='#form.EMPLOCATION#', 
    empwebsite='#form.EMPWEBSITE#',
    empdate='#form.EMPDATE#',
    empsalary='#form.EMPSALARY#',
    empmail='#form.EMPMAIL#',
    empphone='#form.EMPCONTACT#',
    empname='#form.EMPNAME#'  
    where EMPID=#url.id# 

    </cfquery>
    <cflocation url="emplist.cfm" addtoken="false">
</cfif>


  

   <!--- <cfdump var="#emp_edit#"> --->
    <!DOCTYPE html>
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
                width: 50%;
                border: 3px white;
                padding: 0px 50px 50px 0px;
                background-color:rgb(205, 231, 205);
                text-align:center;
                text-indent: 100px;
               
            }
            .center
            {
                margin: auto;
                width: 50%;
                border: 3px white;
                padding: 20px 50px 50px 0px;
                background-color:white;
                text-align:center;
            }
           
    </style>
    </head>
    <body>
        <div class="head" >
                <h1>
                        EMPLOYEE APPLICATION
                </h1>
                <h2>EDIT FORM</h1>
            </div>
            <div class="center"  >
    <cfoutput >
     <form  method="post"> 
        <label for="empposition" > <b>Which position are you applying for?</b> </label>
<br>
<br>
        <select id="empposition" name="empposition">
        <option value="Interface Designer" <cfif #emp_edit.empposition# EQ 'Interface Designer'>selected </cfif>> Interface Designer</option>
        <option value="Software Engineer" <cfif #emp_edit.empposition# EQ 'Software Engineer'>selected </cfif>>Software Engineer</option>
        <option value="System Adminstration" <cfif #emp_edit.empposition# EQ 'System Adminstration'>selected </cfif>>System Adminstration</option>
        <option value="Office Manager" <cfif #emp_edit.empposition# EQ 'Office Manager'>selected </cfif>>Office Manager</option>
</select>
<br>
<br>
        <label for="emplocation"> <b>Are you willing to relocate?</b>  </label>
<br>
<br>
        <input type="radio" id="emplocation" name="emplocation" value="yes"  <cfif #emp_edit.EMPLOCATION# EQ 'YES'>checked </cfif>>
        <label for="yes" >YES</label>
         
        <input type="radio" id="emplocation" name="emplocation" value="no" <cfif #emp_edit.EMPLOCATION# EQ 'NO'>checked </cfif>>
        <label for="NO">NO</label>
<br>
<br>
        <label for="empdate"><b>When can you start? </b> #DateFormat(emp_edit.EMPDATE,'dd/mm/yyyy')#</label>
<br>
<br>
         <input type="date" id="empdate" name="empdate" value="#DateFormat(emp_edit.EMPDATE,'dd/mm/yyyy')#">
<br>
<br>
        <label for="empwebsite"> <b>Portfolio Web Site </b></label>
<br>
        <input type="text" id="empwebsite" name="empwebsite"  value="#emp_edit.EMPWEBSITE#">
<br>
<br>
        <label for="empsalary"> <b>Salary Requirements </b> </label>
<br>
<br>
        <input type="text" id="empsalary" name="empsalary"  value="#emp_edit.EMPSALARY#">
<br>
<br>
        <label for="empname"><b>Name </b> </label>
<br>
         <input type="text" id="empname" name="empname" value="#emp_edit.EMPNAME#">
<br>
<br>
        <label for="empmail"><b>Email Address</b>  </label>
<br><br>
        <input type="email" id="empmail" name="empmail" value="#emp_edit.EMPMAIL#">
<br>
<br>
        <label for="empcontact"><b>Phone</b>  </label>
<br><br>
        <input type="text" id="empcontact" name="empcontact" value="#emp_edit.EMPPHONE#">
<br>
<br>
<input type="submit" value="SUBMIT" name="submit" ></td>
<input type="reset" value="RESET">
        
    </cfoutput>
</div>
</body>
</form>
</html>
<!--- <cfelse>
<cflocation url="emplogin.cfm" >
</cfif> --->
        

    
