(:ii. Retrieve the names of all employees who have two or more dependents.:)
let $employees :=  doc("company.xml")/companyDB/employees/employee

return (<ul> {
for $emp in $employees
where count($emp/dependents/dependent) >= 2
return <li>{concat($emp/fname, " ", $emp/minit, " ", $emp/lname)}</li>
}</ul>)