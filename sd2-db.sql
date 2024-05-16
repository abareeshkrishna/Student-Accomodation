CREATE TABLE accommodations (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  amenities TEXT NOT NULL,
  images TEXT NOT NULL
);
CREATE TABLE bookings (
  id INT PRIMARY KEY,
  accommodation_id INT NOT NULL,
  student_id INT NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  FOREIGN KEY (accommodation_id) REFERENCES accommodations(id),
  FOREIGN KEY (student_id) REFERENCES students(id)
);
CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  password VARCHAR(255) NOT NULL
);
INSERT INTO accommodations (id, name, description, price, amenities, images)
VALUES
  (1, 'Apartment 1', 'A cozy apartment with 1 bedroom', 500.00, 'Wi-Fi, Kitchen, Laundry', 'image1.jpg'),
  (2, 'Apartment 2', 'A spacious apartment with 2 bedrooms', 700.00, 'Wi-Fi, Kitchen, Laundry, Gym', 'image2.jpg'),
  (3, 'Apartment 3', 'A luxurious apartment with 3 bedrooms', 1000.00, 'Wi-Fi, Kitchen, Laundry, Gym, Pool', 'image3.jpg');

INSERT INTO students (id, name, email, phone, password)
VALUES
  (1, 'John Doe', 'johndoe@example.com', '1234567890', 'password1'),
  (2, 'Jane Doe', 'janedoe@example.com', '0987654321', 'password2'),
  (3, 'Bob Smith', 'bobsmith@example.com', '5551234567', 'password3');
INSERT INTO bookings (id, accommodation_id, student_id, start_date, end_date)
VALUES
  (1, 1, 1, '2022-01-01', '2022-01-31'),
  (2, 2, 2, '2022-02-01', '2022-02-28'),
  (3, 3, 3, '2022-03-01', '2022-03-31');