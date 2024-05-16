const express = require('express');
const router = express.Router();
const Accommodation = require('../models/accommodation');

router.get('/', async (req, res) => {
  const accommodations = await Accommodation.find().exec();
  res.render('accommodations', { accommodations });
});

router.get('/:id', async (req, res) => {
  const accommodation = await Accommodation.findById(req.params.id).exec();
  res.render('accommodation', { accommodation });
});

module.exports = router;