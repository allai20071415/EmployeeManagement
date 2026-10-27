package demo.employee;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

class EmployeeServiceTest {

    @Test
    void validEmployeeIsAdded() {
        EmployeeService service = new EmployeeService();

        Employee employee = service.addEmployee("Rahul", "CSE");

        assertEquals("Rahul", employee.getName());
        assertEquals("CSE", employee.getDepartment());
        assertEquals(1, service.getEmployees().size());
    }

    @Test
    void blankNameIsRejected() {
        EmployeeService service = new EmployeeService();

        assertThrows(IllegalArgumentException.class,
                () -> service.addEmployee(" ", "CSE"));
    }

    @Test
    void blankDepartmentIsRejected() {
        EmployeeService service = new EmployeeService();

        assertThrows(IllegalArgumentException.class,
                () -> service.addEmployee("Rahul", " "));
    }
}
