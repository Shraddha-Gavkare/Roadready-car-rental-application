# 🚗 RoadReady – Online Car Rental System

**RoadReady** is a full-stack web application designed to streamline the car rental process. It provides seamless interaction between users, admins, and the system through role-based access, online booking, secure payments, and smart dashboard navigation. The backend is built using **Spring Boot (Java)** and the frontend with ensuring modern, scalable architecture.

Video demonstration link:  https://drive.google.com/file/d/11RawISOP1Xw7dJR9XsRo9Zd-yUuB9MS4/view?usp=sharing

## 🔍 Overview

This system simulates a real-world car rental platform offering:

* **Users (Customers)**: can register, log in, view available cars, book rentals, and make payments.
* **Admins**: can manage users, cars, and monitor bookings and payments.
* **Secure JWT-based Authentication** ensures only authorized users can access specific functionalities.

## 📁 Project Structure

CompleteProject/
│
├── RoadReady-frontend/    # Angular Frontend
│   └── car-rental-frontend/
│
├── RoadReady-backend/     # Spring Boot Backend
│   └── car-rental-backend/
│
├── Database/              # MySQL Scripts
│   ├── users.sql
│   ├── cars.sql
│   ├── reservations.sql
│   ├── payments.sql
│   └── roles.sql

## 🚀 Key Features

### 👤 Customer

* Register & login with JWT token
* View cars by brand, model, price
* Book cars by selecting dates and pickup/dropoff locations
* Make secure online payments
* View and cancel reservation history

### 🛠️ Admin

* Manage user accounts
* Add/update/delete car listings
* View all reservations and payments
* Admin-only dashboard with full access

### 🔐 Authentication

* Secure login using JWT
* Role-based access: `ROLE_CUSTOMER`, `ROLE_ADMIN`
* Guards and Interceptors in Angular to protect routes

## 🎥 Project Demo

| 🔗 **Drive Folder Links** |                                                                            |
| ------------------------- | -------------------------------------------------------------------------- |
| 📹 **Video Link**                   | [https://drive.google.com/file/d/11RawISOP1Xw7dJR9XsRo9Zd-yUuB9MS4/view?usp=sharing]
| 🌐 **Frontend and Backend Code Zip**| [https://drive.google.com/drive/folders/1zZKyl-sDfadbFGpmcRr7AsdGfgt-P90z?usp=sharing]
| 🧱 **SQL Scripts**                  | [https://drive.google.com/file/d/16CHDGqPoAX9DQCMyudni5G-jidBHFmzb/view?usp=sharing]
| 📹 **PPT Link**                     | [https://docs.google.com/presentation/d/1WCSyF77OK2hd06vEyqQFw1ucE7MS9hVV/edit?usp=sharing&ouid=113278176976337080858&rtpof=true&sd=true]

## 🧰 Tech Stack

| Layer      | Technology              |
| ---------- | ----------------------- |
| Frontend   | Angular 16+, TypeScript |
| Backend    | Spring Boot (Java)      |
| Database   | MySQL                   |
| ORM        | Hibernate (JPA)         |
| Security   | Spring Security + JWT   |
| Styling    | Bootstrap + Custom CSS  |
| Tools      | Postman, Swagger, Git   |
| Build Tool | Maven                   |

## 🔐 JWT Authentication Flow

* User logs in via `/api/auth/login`
* Backend validates credentials and returns a **JWT token**
* Angular stores this token in **localStorage**
* All subsequent requests include the token in the `Authorization` header
* Spring Security validates token and grants role-based access

✅ JWT Token structure:
`Bearer eyJhbGciOiJIUzI1NiJ9...`

✅ Protected routes:

* `api/reservations/**`, `api/payments/**`, `api/admin/**`

## 📌 Angular Routing & Frontend Structure

src/
├── app/
│   ├── components/       # UI Components (login, register, car list, etc.)
│   ├── services/         # Auth, Car, Reservation, Payment Services
│   ├── guards/           # Role-based route guards
│   ├── interceptors/     # JWT token interceptor
│   ├── app-routing.module.ts # Route configuration
│   └── app.component.ts

Routing works with `RouterModule`, and guards protect admin/customer-specific routes. Services use `HttpClient` to send API requests.

## 🛠️ Setup Instructions

### 1️⃣ Clone the Project

```bash
git clone {gh repo clone Shraddha-Gavkare/Roadready-car-rental-application}
cd CompleteProject
```
---

### 2️⃣ Backend Setup (Spring Boot)

```bash
cd RoadReady-backend/car-rental-backend
```

Edit `application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/roadreadydb
spring.datasource.username=root
spring.datasource.password=your_password
jwt.secret=your_jwt_secret_key
```

Run the project:

```bash
./mvnw spring-boot:run
```
Backend will start at: **`http://localhost:8080`**

---

### 3️⃣ Frontend Setup (Angular)

```bash
cd RoadReady-frontend/car-rental-frontend
npm install
ng serve
```
Frontend will run at: **`http://localhost:4200`**
---

## 🧪 Roles and Access

| Role     | Access Description                   |
| -------- | ------------------------------------ |
| CUSTOMER | Car list, booking, payments, profile |
| ADMIN    | Full access to all modules           |
---

## 🌟 Future Enhancements

* Payment gateway integration (Razorpay, Stripe)
* Email confirmation on booking
* Car availability calendar
* Admin analytics dashboard
* Docker & CI/CD pipeline setup
---

## 👩‍💻 Author

**Shraddha Gavkare**
📧 Email: {shraddhagavkare13@gmail.com}
🚀 Project: RoadReady
💼 Institution: PCCOE Pune
🔗 GitHub: {https://github.com/Shraddha-Gavkare/Roadready-car-rental-application}

