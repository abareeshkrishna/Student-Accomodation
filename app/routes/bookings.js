const express = require('express');
const router = express.Router();
const Booking = require('../models/booking');

router.post('/', async (req, res) => {
  const booking = new Booking(req.body);
  await booking.save();
  res.redirect('/bookings');
});

router.get('/', async (req, res) => {
  const bookings = await Booking.find().exec();
  res.render('bookings', { bookings });
});

module.exports = router; 