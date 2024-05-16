const Sequelize = require('sequelize');
const db = require('../config/db');

const Accommodation = db.define('Accommodation', {
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  name: {
    type: Sequelize.STRING
  },
  description: {
    type: Sequelize.TEXT
  },
  price: {
    type: Sequelize.DECIMAL(10, 2)
  },
  amenities: {
    type: Sequelize.TEXT
  },
  images: {
    type: Sequelize.TEXT
  }
});

module.exports = Accommodation;