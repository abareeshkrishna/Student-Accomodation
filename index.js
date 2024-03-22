const express = require("express");
const mysql = require("mysql");
require("dotenv").config();
const path = require("path");
const fs = require("fs");
const query = require("./database/query/query");
const app = express();

const PORT = process.env.PORT || 8080;

// Set up Pug as the view engine
app.set('view engine', 'pug');
app.set('views', __dirname + '/views');

app.use(express.static('public'));


// Create connection to MySQL database
const connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: 3306 || process.env.DB_PORT,
    connectionLimit: 10 || process.env.DB_CONNECTION_LIMIT
});

// Connect to MySQL
connection.connect((err) => {
    if (err) {
        console.error('Error connecting to MySQL:', err);
        return;
    }
    console.log('Connected to MySQL database');
});

// Routes
app.get('/', (req, res) => {
    // Query the database to fetch rooms
    connection.query(query.SELECT_ROOMS, (err, rooms) => {
        if (err) {
            console.error('Error fetching rooms:', err);
            res.status(500).send('Internal Server Error');
            return;
        }

        // Render the index view with the rooms data
        res.render('index', { title: 'Student Accommodation', rooms: rooms });
    });
});

app.listen(PORT, () => {
    console.log(`App running on http://localhost:${PORT}`);
})