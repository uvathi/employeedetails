<cfdump var="#form#">



<cfquery name="studentAdd" datasource="studDSN">
    insert into stud_Reg (fname,lastname,gender,stream,domain)
    values ('#form.fname#','#form.lastname#','#form.gender#','#form.c1#','#form.domain#')
</cfquery>
<cflocation url="customerList.cfm">
