const mongoose = require('mongoose');
const userSchema = new mongoose.Schema({
  firebaseUID: { type: String, required: true, unique: true },
  email: { type: String, required: true },
  name: String,
  balance: { type: Number, default: 1000 },
});
module.exports = mongoose.model('User', userSchema);