<cfset x="80">
<cfset y="20">

<cfoutput>#x+y#</cfoutput>


<cfquery name="stdList" datasource="studentDSN">
    select * from stud_Details where stud_ID= 4
</cfquery>

<cfdump var="#stdList#">