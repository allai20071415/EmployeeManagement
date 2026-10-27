<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Employee Management</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 850px; margin: 36px auto; padding: 0 18px; color: #1f2937; }
        h1, h2 { color: #164e63; }
        form { background: #f1f5f9; padding: 18px; border-radius: 10px; }
        label { display: block; margin: 12px 0 5px; }
        input { box-sizing: border-box; width: 100%; max-width: 420px; padding: 10px; }
        button { margin-top: 16px; padding: 10px 16px; border: 0; border-radius: 5px; background: #0e7490; color: white; cursor: pointer; }
        table { border-collapse: collapse; width: 100%; margin-top: 12px; }
        th, td { text-align: left; padding: 10px; border: 1px solid #cbd5e1; }
        th { background: #e2e8f0; }
        .error { color: #b91c1c; }
    </style>
</head>
<body>
    <h1>Employee Management</h1>
    <p>Add an employee below. This demonstration stores entries in memory only.</p>

    <c:if test="${not empty error}">
        <p class="error"><c:out value="${error}"/></p>
    </c:if>

    <form action="${pageContext.request.contextPath}/employees" method="post">
        <label for="name">Employee name</label>
        <input id="name" name="name" required maxlength="100">

        <label for="department">Department</label>
        <input id="department" name="department" required maxlength="100">

        <button type="submit">Add Employee</button>
    </form>

    <h2>Employees</h2>
    <table>
        <thead><tr><th>Name</th><th>Department</th></tr></thead>
        <tbody>
        <c:forEach var="e" items="${employees}">
            <tr>
                <td><c:out value="${e.name}"/></td>
                <td><c:out value="${e.department}"/></td>
            </tr>
        </c:forEach>
        <c:if test="${empty employees}">
            <tr><td colspan="2">No employees added yet.</td></tr>
        </c:if>
        </tbody>
    </table>
</body>
</html>
