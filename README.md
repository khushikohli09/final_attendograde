# 📊 Attendograde – Academic Management System

Attendograde is a backend-driven academic management system designed to manage student attendance, grades, and assignment submissions efficiently.

The system supports role-based access for Faculty and Students, ensuring secure and structured academic record management.

Built using Java, Spring Boot, and MySQL, the application follows a clean layered architecture and RESTful API principles.

---

## 🚀 Features

### 👨‍🏫 Faculty Role
- Add and manage student records
- Mark attendance
- Assign and update student marks
- give assignments
- View submitted assignments

### 👩‍🎓 Student Role
- View attendance records
- View grades/marks
- Submit assignments

---

## 🔐 Authentication & Authorization

- Role-Based Access Control (RBAC)
- Secured endpoints using Spring Security
- Separate access levels for:
  - FACULTY
  - STUDENT

Only authorized users can access protected resources based on their role.

---

## 🛠 Tech Stack

### Backend
- Java
- Spring Boot
- Spring Security
- JPA / Hibernate

### Database
- MySQL
- Normalized relational schema
- Entity relationships using JPA mappings

### Tools
- Maven
- Git & GitHub

---

## 🏗 Architecture

The application follows a layered architecture:

Controller → Service → Repository → Database

- Controllers handle HTTP requests
- Services contain business logic
- Repositories manage database interaction
- Spring Security manages authentication & role-based authorization

This structure ensures:
- Separation of concerns
- Scalability
- Maintainability
- Clean code organization

---


