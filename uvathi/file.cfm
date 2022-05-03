<!--- <cfif IsDefined("form.submit") is "Yes">
    <label for="file">upload the file</label>
    <input type="file" id="file" name="file"><br>
    <input type="submit" id="submit" value="SUBMIT">
    <cfdump var="#expandPath('./images')#">
    <cfabort>
    <cffile action = "upload" destination="#expandPath('.')#">

<cfelse>
    <cflocation url="employee.cfm">
</cfif> --->


<cfif isDefined("Form.FileContents") > 
    <cffile action = "upload" destination = "#expandpath('./uploads')#" > 
    <cfelse> 
    <!--- If FALSE, show the Form. ---> 
    <form method="post" action=<cfoutput>#cgi.script_name#</cfoutput> 
    name="uploadForm" enctype="multipart/form-data"> 
    <input name="FileContents" type="file"> 
    <br> <br>
    <input name="submit" type="submit" value="Upload File"> 
    </form>
    </cfif> 
