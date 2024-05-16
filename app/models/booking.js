const Sequelize = require('sequelize');
const db = require('../config/db');

const Booking = db.define('Booking', {
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  accommodationId: {
    type: Sequelize.INTEGER,
    references: {
      model: 'Accommodation',
      key: 'id'
    }
  },
  studentId: {
    type: Sequelize.INTEGER,
    references: {
      model: 'Student',
      key: 'id'
    }
  },
  startDate: {
    type: Sequelize.DATE
  },
  endDate: {
    type: Sequelize.DATE
  }
});

module.exports = Booking;
