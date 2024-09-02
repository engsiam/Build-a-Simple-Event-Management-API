### **Updated GitHub README**

---

# **Event Management API**

## **Objective**

This project is a RESTful API for managing events, allowing users to create, update, delete, and list events. The API also supports participant management, prevents time conflicts between events, and handles large datasets with pagination. Additionally, it is secured with JWT authentication to ensure unauthorized access is prevented.

## **Features**

- Create, update, and delete events.
- Manage participants for each event.
- Prevent time conflicts between events at the same location.
- Handle large datasets efficiently with pagination.
- Secure API with JWT authentication.
- Rate limiting to protect against abuse.

## **Tech Stack**

- **Node.js**: JavaScript runtime environment.
- **Express.js**: Web framework for Node.js.
- **MySQL**: Relational database management system.
- **JWT**: JSON Web Tokens for authentication.
- **bcryptjs**: Password hashing.
- **dotenv**: Environment variable management.

## **Getting Started**

### **Prerequisites**

Ensure you have the following installed on your local machine:

- [Node.js](https://nodejs.org/) (v14+)
- [MySQL](https://www.mysql.com/)

### **Installation**

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-username/event-management-api.git
   cd event-management-api
   ```

2. **Install Dependencies:**
   ```bash
   npm install
   ```

3. **Create a `.env` file in the root directory:**
   ```bash
   touch .env
   ```

   **Add the following environment variables to the `.env` file:**
   ```
   PORT=3000
   DB_HOST=localhost
   DB_USER=root
   DB_PASSWORD=yourpassword
   DB_NAME=event_management
   JWT_SECRET=your_jwt_secret
   ```

4. **Set up the MySQL Database:**

   - Log in to your MySQL server and create the database:
     ```sql
     CREATE DATABASE event_management;
     ```

   - **Create the `users` table:**
     ```sql
     CREATE TABLE users (
         id INT AUTO_INCREMENT PRIMARY KEY,
         username VARCHAR(255) NOT NULL UNIQUE,
         password VARCHAR(255) NOT NULL,
         email VARCHAR(255) UNIQUE,
         role ENUM('user', 'admin') DEFAULT 'user',
         created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
         updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
     );
     ```

   - **Create the `events` table:**
     ```sql
     CREATE TABLE events (
         id INT AUTO_INCREMENT PRIMARY KEY,
         name VARCHAR(255) NOT NULL,
         date DATE NOT NULL,
         start_time TIME NOT NULL,
         end_time TIME NOT NULL,
         location VARCHAR(255) NOT NULL,
         description TEXT
     );
     ```

   - **Create the `participants` table:**
     ```sql
     CREATE TABLE participants (
         id INT AUTO_INCREMENT PRIMARY KEY,
         email VARCHAR(255) NOT NULL UNIQUE
     );
     ```

   - **Create the `event_participants` table:**
     ```sql
     CREATE TABLE event_participants (
         event_id INT,
         participant_id INT,
         FOREIGN KEY (event_id) REFERENCES events(id),
         FOREIGN KEY (participant_id) REFERENCES participants(id),
         PRIMARY KEY (event_id, participant_id)
     );
     ```

5. **Start the Server:**
   ```bash
   npm start
   ```

   The API should now be running on `http://localhost:3000`.

## **API Documentation**

### **Authentication**

#### **Register**
- **URL:** `/api/auth/register`
- **Method:** `POST`
- **Body:**
  ```json
  {
    "username": "testuser",
    "password": "password123",
    "email": "testuser@example.com"
  }
  ```
- **Description:** Registers a new user.

#### **Login**
- **URL:** `/api/auth/login`
- **Method:** `POST`
- **Body:**
  ```json
  {
    "username": "testuser",
    "password": "password123"
  }
  ```
- **Description:** Logs in a user and returns a JWT token.

### **Events**

#### **Create Event**
- **URL:** `/api/events`
- **Method:** `POST`
- **Headers:** 
  - `Authorization: Bearer <your-jwt-token>`
- **Body:**
  ```json
  {
    "name": "Sample Event",
    "date": "2024-12-31",
    "start_time": "10:00",
    "end_time": "12:00",
    "location": "Event Location",
    "description": "This is a sample event.",
    "participants": ["participant1@example.com", "participant2@example.com"]
  }
  ```
- **Description:** Creates a new event.

#### **Update Event**
- **URL:** `/api/events/:id`
- **Method:** `PUT`
- **Headers:** 
  - `Authorization: Bearer <your-jwt-token>`
- **Body:**
  ```json
  {
    "name": "Updated Event",
    "date": "2024-12-31",
    "start_time": "11:00",
    "end_time": "13:00",
    "location": "Updated Location",
    "description": "This is an updated event."
  }
  ```
- **Description:** Updates an existing event by ID.

#### **Delete Event**
- **URL:** `/api/events/:id`
- **Method:** `DELETE`
- **Headers:** 
  - `Authorization: Bearer <your-jwt-token>`
- **Description:** Deletes an event by ID.

### **Participants**

#### **Add Participants**
- **URL:** `/api/events/:id/participants`
- **Method:** `POST`
- **Body:**
  ```json
  {
    "participants": ["newparticipant1@example.com", "newparticipant2@example.com"]
  }
  ```
- **Description:** Adds participants to an event.

#### **Remove Participant**
- **URL:** `/api/events/:id/participants/:participantId`
- **Method:** `DELETE`
- **Description:** Removes a participant from an event.

## **Postman Collection**

You can import this [Postman collection](#) to test the API endpoints easily.

## **Security**

- **JWT Authentication:** Used to secure API endpoints.
- **Input Validation:** All input data is validated and sanitized to prevent SQL injection.
- **Rate Limiting:** Implemented on event listing and retrieval to protect against brute-force attacks.

## **Handling Large Data**

- **Pagination:** Implemented in the `GET /events?limit=5` endpoint to handle large datasets efficiently.
- **Optimized Queries:** Database queries are optimized to handle a large number of participants and events.


## **License**

This project is licensed under the MIT License.

