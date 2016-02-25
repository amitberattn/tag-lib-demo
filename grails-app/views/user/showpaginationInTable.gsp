<table border="1">
    <th>id </th>
    <th>FirstName </th>
    <th>LastName </th>

    <g:each in="${userList}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
        </tr>
    </g:each>

</table>


<div id ="userTable_PaginateDiv" class="pagination">
    <g:paginate maxsteps="5" total="${userCount}" controller="user" action="showPaginatedData" />
</div>