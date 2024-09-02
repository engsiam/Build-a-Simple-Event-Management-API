const express = require('express');
const router = express.Router();
const eventController = require('../controllers/eventController');
const eventParticipantController = require('../controllers/eventParticipantController');
const { validateEvent } = require('../middleware/eventValidator');
const authenticateToken = require('../middleware/authMiddleware');
const eventRateLimiter = require('../helpers/rateLimiter').eventRateLimiter;


//add routes
router.post('/events',authenticateToken,validateEvent,eventController.createEvent);
router.get('/events',eventRateLimiter,eventController.listEvents);
router.get('/events/:id',eventRateLimiter,eventController.getEventById);
router.put('/events/:id',authenticateToken,validateEvent,eventController.updateEvent);
router.delete('/events/:id',authenticateToken,eventController.deleteEvent);
router.post('/events/:id/participants',eventParticipantController.addParticipantsController);
router.delete('/events/:id/participants/:participantId',eventRateLimiter,eventParticipantController.removeParticipantController);

module.exports = router