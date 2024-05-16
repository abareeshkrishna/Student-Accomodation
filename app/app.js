// Import express.js
const express = require("express");

// Create express app
const app = express();

// Add static files location
app.use(express.static("static"));

// Get the functions in the db.js file to use
const db = require('./services/db.js');

// Create a route for testing the db
app.get("/db_test", async (req, res) => {
    try {
        // Assumes a table called test_table exists in your database
        const sql = 'SELECT * FROM test_table';
        const results = await db.query(sql);
        console.log(results);
        res.send(results);
    } catch (error) {
        console.error("Database query error:", error);
        res.status(500).send("Internal Server Error");
    }
});

const accommodationsRouter = require('./routes/accommodations');
const bookingsRouter = require('./routes/bookings');

app.set('view engine', 'pug');
app.set('views', './views');

app.use(express.static('public'));
app.use(express.urlencoded({ extended: true }));

// Use routers with base paths
app.use('/accommodations', accommodationsRouter);
app.use('/bookings', bookingsRouter);

// Create a route for root
app.get("/", (req, res) => {
    res.render("index");
});

// Start server on port 3000
app.listen(3000, () => {
    console.log(`Server running at http://127.0.0.1:3000/`);
});
