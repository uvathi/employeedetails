   <!--- <cffunction name="listOne" returntype="query">
 <cfcomponent>
    <cffunction name="listAll" returntype="query">
        <cfset var q =''>
        <cfquery name="q" datasource="#application.DSN#">
            select * from emptable
        </cfquery>
        <cfreturn q>
    </cffunction>

        <cfargument name="empId" type="numeric" default=0>
        <cfset var q=''>
        <cfquery name="q" datasource="#application.DSN#">
        select * from emptable where empid=#arguments.empId# 
        </cfquery>
        <cfreturn q>
    </cffunction> --->

    <cfcomponent>
        <cffunction name="listAll" returntype="query">
        <cfargument name="empId" type="numeric" default=0>
        <cfquery name="q" datasource="#application.DSN#">
         select * from emptable where 1=1 
         <cfif val(arguments.empId)>and
                id=#arguments.empId#
        </cfif>
    </cfquery>
        <cfreturn q>
   </cffunction>
<!--- for edit --->
   <cffunction name="listOne" returntype="query">
   <cfargument name="empId" type="numeric" default=0>
   <cfset var q=''>
   <cfquery name="q" datasource="#application.DSN#">
   select * from emptable where empid=#arguments.empId# 
   </cfquery>
   <cfreturn q>
    </cffunction>
    
    <cffunction name="save" returntype="void">
        <cfargument name="empInsert" default=0 type="struct">
        <cffile action = "upload" destination = "#expandpath('./uploads')#" > 
        <cfquery name='q' datasource="#application.DSN#">
            INSERT INTO emptable (empposition,emplocation,empwebsite,empsalary,empmail,empcontact,empname,empdate,empfile)
                VALUES (<cfqueryparam value =  "#arguments.empInsert.empposition#" cfsqltype= "cf_sql_varchar">,
                        <cfqueryparam value =  "#arguments.empInsert.emplocation#" cfsqltype= "cf_sql_varchar">,
                        <cfqueryparam value =  "#arguments.empInsert.empwebsite#" cfsqltype= "cf_sql_varchar">,
                        <cfqueryparam value =  "#arguments.empInsert.empsalary#" cfsqltype= "CF_SQL_INTEGER">,
                        <cfqueryparam value =  "#arguments.empInsert.empmail#" cfsqltype= "cf_sql_varchar">,
                        <cfqueryparam value =  "#arguments.empInsert.empcontact#" cfsqltype= "CF_SQL_INTEGER">,
                        <cfqueryparam value =  "#arguments.empInsert.empname#" cfsqltype= "cf_sql_varchar">,
                        <cfqueryparam value =  "#arguments.empInsert.empdate#" cfsqltype= "cf_sql_date">,
                        <cfqueryparam value =  "#arguments.empInsert.empfile#" cfsqltype= "cf_sql_varchar">)
        </cfquery>
        </cffunction>
        
<cffunction name="multiply" returntype="any">
<cfargument name="data" default=0 type="struct">
<cfset var q=arguments.data.a*arguments.data.b>
<cfreturn q>
</cffunction>
</cfcomponent>