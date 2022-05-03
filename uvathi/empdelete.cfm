<!--- <cfif session.userCHK EQ 1>
<cfparam name="url.id" default=0> --->

<cfdump var="#url#">
<cfquery name="empAll" datasource="#application.DSN#">
delete from emptable where EMPID=#url.id#

</cfquery>
<!--- <cfelse>
    <cflocation url="emplogin.cfm">
</cfif> --->



