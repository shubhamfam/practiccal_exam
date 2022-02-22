(:iii. Retrieve the names of managers who have at least one dependent.:)

let $managers := doc("company.xml")/companyDB/employees/employee[@manages]

return (<ul> {
    for $manager in $managers
    where count($manager/dependents/dependent) > 0
    return <li>{concat($manager/fname, " ", $manager/minit, " ", $manager/lname)}</li>
}</ul>)