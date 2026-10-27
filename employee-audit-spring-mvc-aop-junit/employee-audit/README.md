# Employee Management with Audit Logging

A beginner Spring Boot MVC project using JSP, Spring AOP, and JUnit 5. Employee data is kept in memory and is cleared when the app stops.

## Requirements
- JDK 25 (latest LTS)
- Maven 3.9+ (or a Maven Wrapper, if you add one)
- VS Code with Extension Pack for Java, or Eclipse IDE for Enterprise Java and Web Developers

## Open the project
Extract the ZIP, then open the `employee-audit` folder itself in VS Code or import it as an existing Maven project in Eclipse.

## Verify tools in a terminal
```bat
java -version
javac -version
mvn -version
```
The output should identify Java 25. If `mvn` is not recognized, install Maven and add its `bin` folder to PATH, then reopen the terminal.

## Run tests
From the `employee-audit` project folder:
```bat
mvn test
```
Expected: `BUILD SUCCESS` and 3 tests run with no failures.

## Start the web app
```bat
mvn spring-boot:run
```
Wait for the application to start, then open http://localhost:8080/ in your browser.

## Try it
1. Enter an employee name such as `Rahul`.
2. Enter a department such as `CSE`.
3. Select **Add Employee**.
4. Confirm the employee appears in the table.
5. Check the terminal for `[AUDIT] Calling addEmployee` and `[AUDIT] Completed addEmployee`.
6. Stop the app with Ctrl+C. Restarting it clears the in-memory employee list.

## Build a WAR
```bat
mvn clean package
```
The output WAR is `target\employee-audit.war`. It is configured as an executable Spring Boot WAR; for this beginner workflow, use `mvn spring-boot:run`.

## Common issues
- **Port 8080 already in use:** stop the other server or change `server.port` in `src/main/resources/application.properties`.
- **JSP page not found / view error:** ensure `employees.jsp` is under `src/main/webapp/WEB-INF/jsp/`.
- **Java or Maven not recognized:** configure `JAVA_HOME` and PATH, then restart VS Code/Eclipse and the terminal.
- **Dependencies cannot download:** check your internet connection and retry Maven after it is restored.

## Project structure
```text
employee-audit/
├── pom.xml
├── README.md
└── src/
    ├── main/
    │   ├── java/demo/employee/
    │   │   ├── EmployeeAuditApplication.java
    │   │   ├── Employee.java
    │   │   ├── EmployeeService.java
    │   │   ├── EmployeeController.java
    │   │   └── AuditAspect.java
    │   ├── resources/application.properties
    │   └── webapp/WEB-INF/jsp/employees.jsp
    └── test/java/demo/employee/EmployeeServiceTest.java
```
