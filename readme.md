# Student Accommodation Project

Welcome to the Student Accommodation Project! This project aims to provide a platform for managing student accommodations.

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Installation](#installation)
3. [Usage](#usage)

## Prerequisites
Before running the application, ensure you have the following prerequisites installed:
- Node.js (version 10 or higher)
- npm (Node Package Manager)
- MySQL (Make sure MySQL is installed and running on your system)

## Installation
Follow these steps to set up the application:

1. **Clone the Repository:**  
   Clone the project repository to your local machine:
   ```bash
   git clone <repository-url>

2. **Install Dependencies:**
   After initializing an npm project, install the following dependencies:
   ```bash
   npm install --save express, pug, mysql, dotenv
   npm install --save -D nodemon
3. Open your mysql client and copy the following sql
   ```bash
   CREATE DATABASE IF NOT EXISTS students_accomodation;

    use students_accomodation;

    CREATE TABLE rooms(
        id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(256) NOT NULL,
        capacity INT NOT NULL,
        description VARCHAR(256) NOT NULL,
        isFull BOOLEAN NOT NULL DEFAULT FALSE
    );

    -- prefill database with rroms
    INSERT INTO rooms (name, capacity, description, isFull) VALUES ('Room 1', 2, 'Small room', true);
    INSERT INTO rooms (name, capacity, description, isFull) VALUES ('Room 2', 2, 'Small room', false);
    INSERT INTO rooms (name, capacity, description, isFull) VALUES ('Room 3', 4, 'Medium room', true);
    INSERT INTO rooms (name, capacity, description, isFull) VALUES ('Room 4', 8, 'Large room', false);
    INSERT INTO rooms (name, capacity, description, isFull) VALUES ('Room 5', 21, 'Hall', false);
    INSERT INTO rooms (name, capacity, description, isFull) VALUES ('Room 6', 4, 'Medium room', false);
    INSERT INTO rooms (name, capacity, description, isFull) VALUES ('Room 7', 8, 'Large room', false);
    INSERT INTO rooms (name, capacity, description, isFull) VALUES ('Room 8', 1, 'Private room', true);

4. Update .env file with your database specific credentials
  
5. Open your terminal and run the following command
   ```bash
   npm start
6. Open your browser
    ```bash
    http://localhost:8080