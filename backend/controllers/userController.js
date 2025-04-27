const User = require('../models/User');

exports.getOrCreateUser = async (req, res) => {
  const { uid, email, name } = req.body;
  let user = await User.findOne({ firebaseUID: uid });
  if (!user) user = await User.create({ firebaseUID: uid, email, name });
  res.json(user);
};