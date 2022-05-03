<cfquery name="empAdd" datasource="empDSN">
    insert into emptable (empposition,emplocation,empdate,empwebsite,empsalary,empmail,empphone,empname)
    values ('#form.EMPPOSITION#',
            '#form.EMPLOCATION#',
            '#form.EMPDATE#',
            '#form.EMPWEBSITE#',
            '#form.EMPSALARY#',
            '#form.EMPMAIL#',
            '#form.EMPCONTACT#',
            '#form.EMPNAME#')
</cfquery>
<cflocation url="emplist.cfm">

