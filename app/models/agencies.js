// Get the functions in the db.js file to use
const db = require('../services/db');
const bcrypt = require("bcryptjs");

class Agency {

    // Id of the agency
    id;

    // Email of the agency
    email;

    constructor(email) {
        this.email = email;
    }
    async getIdFromEmail() {
        var sql = "SELECT id FROM Agencies WHERE Agencies.email = ?";
        const result = await db.query(sql, [this.email]);
        // TODO LOTS OF ERROR CHECKS HERE..
        if (JSON.stringify(result) != '[]') {
            this.id = result[0].id;
            return this.id;
        }
        else {
            return false;
        }
    }
    async setUserPassword(password) {
        const pw = await bcrypt.hash(password, 10);
        var sql = "UPDATE Agencies SET password = ? WHERE Agencies.id = ?"
        const result = await db.query(sql, [pw, this.id]);
        return true;
    }
    async addUser(password) {
        const pw = await bcrypt.hash(password, 10);
        var sql = "INSERT INTO Agencies (email, password) VALUES (? , ?)";
        const result = await db.query(sql, [this.email, pw]);
        console.log(result.insertId);
        this.id = result.insertId;
        return true;
    }
    async authenticate(submitted) {
        // Get the stored, hashed password for the agency
        var sql = "SELECT password FROM Agency WHERE id = ?";
        const result = await db.query(sql, [this.id]);
        const match = await bcrypt.compare(submitted, result[0].password);
        if (match == true) {
            return true;
        }
        else {
            return false;
        }
    }

}
module.exports  = {
    Agency,
}