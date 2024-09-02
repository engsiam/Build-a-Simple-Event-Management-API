// middleware/eventValidator.js
const { check, validationResult } = require('express-validator');

const validateEvent = [
  check('name')
    .isString()
    .withMessage('Name must be a string')
    .trim()
    .escape(),
  check('date')
    .isISO8601()
    .withMessage('Date must be in YYYY-MM-DD format'),
  check('start_time')
    .matches(/\d{2}:\d{2}/)
    .withMessage('Start time must be in HH:MM format'),
  check('end_time')
    .matches(/\d{2}:\d{2}/)
    .withMessage('End time must be in HH:MM format'),
  check('location')
    .isString()
    .withMessage('Location must be a string')
    .trim()
    .escape(),
  check('description')
    .optional()
    .trim()
    .escape(),
  (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    next();
  },
];

module.exports = {
  validateEvent,
};
