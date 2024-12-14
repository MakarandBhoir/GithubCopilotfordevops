# Simple Java Web Project

This is a simple Java web project that demonstrates the use of JSP and Servlets without including dependencies for Servlet, JSP, and JSTL in the `pom.xml` file.

## Project Structure

```
simple-java-web-project
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── example
│   │   │           ├── servlet
│   │   │           │   └── HelloServlet.java
│   │   │           └── model
│   │   │               └── User.java
│   │   ├── resources
│   │   └── webapp
│   │       ├── WEB-INF
│   │       │   └── web.xml
│   │       └── index.jsp
├── pom.xml
└── README.md
```

## Setup Instructions

1. **Clone the repository**:
   ```
   git clone <repository-url>
   cd simple-java-web-project
   ```

2. **Build the project**:
   Use Maven to build the project:
   ```
   mvn clean install
   ```

3. **Run the application**:
   Deploy the application on a servlet container (e.g., Apache Tomcat) and access it via a web browser.

4. **Access the application**:
   Open your web browser and navigate to:
   ```
   http://localhost:8080/simple-java-web-project/
   ```

## Files Overview

- **HelloServlet.java**: A servlet that handles GET requests and responds with a greeting message.
- **User.java**: A model class representing a user with properties such as `id`, `name`, and `email`.
- **web.xml**: The deployment descriptor that defines servlet mappings and the welcome file.
- **index.jsp**: The entry point of the web application, displaying content to the user.

## Note

This project does not include dependencies for Servlet, JSP, and JSTL in the `pom.xml` file, as per the project requirements. Make sure to add them if needed for your specific use case.