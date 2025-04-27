const mongoose = require('mongoose');
const contestSchema = new mongoose.Schema({
  match: { type: mongoose.Schema.Types.ObjectId, ref: 'Match' },
  entryFee: Number,
  prizePool: Number,
  participants: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Team' }]
});
module.exports = mongoose.model('Contest', contestSchema);