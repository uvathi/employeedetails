
<cfparam name="session.userCHK" default="0">
<cfapplication name="Employee App" sessionmanagement="Yes" >
<cfset application.employee= createObject('component','empDAO')>
<cfset application.DSN="empDSN">

 <cfif not val(session.userCHK) and listlast(cgi.SCRIPT_NAME,"/") NEQ "emplogin.cfm">
    <cflocation url="emplogin.cfm" addtoken="false">
 </cfif> 