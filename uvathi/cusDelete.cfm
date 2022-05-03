<cfdump var="#url#">

<cfquery name="studentAdd" datasource="studDSN">
delete from stud_Reg where STUD_ID=#url.id#
</cfquery>
<cflocation url="customerList.cfm">


