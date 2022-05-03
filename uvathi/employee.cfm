

<!--- <cfif session.userCHK EQ 1>
<cfparam name="url.id" default=0> --->


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
    <form method="post" action=<cfoutput>#cgi.script_name#</cfoutput> 
        name="uploadForm" enctype="multipart/form-data"> 
<div class="head" >
    <h1>
            EMPLOYEE APPLICATION FORM
    </h1>
</div>

    <div class="center"  >
    
<br>
<br>

    <label for="empposition" > <b>Which position are you applying for?</b> </label>
<br>
        <select id="empposition" name="empposition">
        <option value=" Interface Designer" name="empposition"> Interface Designer</option>
        <option value="Software Engineer" name="empposition">Software Engineer</option>
        <option value="System Adminstration" name="empposition">System Adminstration</option>
        <option value="Office Manager" name="empposition">Office Manager</option>
</select>
<br>
<br>
<br>
        <label for="emplocation"><b>Are you willing to relocate?</b>  </label>
<br>
        <input type="radio" id="emplocation" name="emplocation" value="yes">
        <label for="yes" >YES</label></label>
        <input type="radio" id="emplocation" name="emplocation" value="no">
        <label for="NO">NO</label>
<br>
<br>
<br>
    <label for="empdate"><b>When can you start? </b></label>
<br>
    <input type="date" id="empdate" name="empdate">
<br>
<br>
<br>
    <label for="empwebsite" name="empwebsite"> <b>Portfolio Web Site </b></label>
<br>
    <input type="text" id="empwebsite" name="empwebsite">
<br>
<br>
<br>
    <label for="empsalary" name="empsalary"> <b>Salary Requirements </b> </label>
<br>
    <input type="text" id="empsalary" name="empsalary">
<br>
<br>
<br>
    <label for="empfile" name="empfile"> <b>Upload Resume</b> </label>
<br>
    <input type="file" id="empfile" name="empfile">
<br>
<br>
<br>
    <label for="empname" name="empname"><b>Name </b> </label>
<br>
    <input type="text" id="empname" name="empname">
<br>
<br>
<br>
<br>
    <label for="empmail" name="empmail"><b>Email Address</b>  </label>
<br>
    <input type="email" id="empmail" name="empmail">
<br>
<br>
<br>
    <label for="empcontact" name="empcontact"><b>Phone</b>  </label>
<br>
    <input type="text" id="empcontact" name="empcontact">
<br>
<br>
<br>

<input type="submit" value="SUBMIT" name="submit">
<input type="reset" value="RESET">
</div> 
</form>
    

    <cfif isDefined('form.submit')>
        <cfdump var="#form#">
        <cfset empADD=application.employee.save(form)>
            <cflocation url="emplist.cfm" addtoken = "false">
    </cfif>         

</body>
</html>
<!--- <cfelse>
    <cflocation url="emplogin.cfm" addtoken = "false">
</cfif> --->