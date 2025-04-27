const mongoose = require('mongoose');
const matchSchema = new mongoose.Schema({
  teamA: String,
  teamB: String,
  matchTime: Date,
  status: { type: String, enum: ['upcoming','live','completed'], default: 'upcoming' },
  players: Array
});
module.exports = mongoose.model('Match', matchSchema);