(:i. For every project located in “Stafford”, retrieve the project number, 
the controlling department number, 
and the department’s manager’s last name, address, and birth date.:)

let $projects := doc("company.xml")/companyDB/projects/project[plocation = "Stafford"]

for $proj in $projects
    let $proj_no := $proj/@pnumber
    let $dept_no := $proj/@controllingDepartment
    let $mssn := doc("company.xml")/companyDB/departments/department[@dno = $dept_no]/manager/@mssn
    let $manager := doc("company.xml")/companyDB/employees/employee[@ssn = $mssn]
return <div>
    {$proj_no}
    {$dept_no}
    {$manager/lname}
    {$manager/address}
    {$manager/dob}
</div>
  
    