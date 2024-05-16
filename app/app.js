// Import express.js
const express = require("express");

// Create express app
var app = express();

// Add static files location
app.use(express.static("static"));

// Get the functions in the db.js file to use
const db = require('./services/db.js');
// Create a route for testing the db
app.get("/db_test", function(req, res) {
    // Assumes a table called test_table exists in your database
    sql = 'select * from test_table';
    db.query(sql).then(results => {
        console.log(results);
        res.send(results)
    });
});
const accommodationsRouter = require('./routes/accommodations.js');
const bookingsRouter = require('./routes/bookings.js');

app.set('view engine', 'pug');
app.set('views', './views');

app.use(express.static('public'));
app.use(express.urlencoded({ extended: true }))

app.use('/accommodations.js', accommodationsRouter);
app.use('/bookings.js', bookingsRouter);

// Create a route for root
app.get("/", function(req, res) {
    res.render("index.pug");
});

// Start server on port 3000
app.listen(3000,function(){
    console.log(`Server running at http://127.0.0.1:3000/`);
});