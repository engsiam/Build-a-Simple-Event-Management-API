const Event = require("../models/eventModel");
const Participant = require("../models/participantModel");
const EventParticipant = require("../models/eventParticipantModel");


const createEvent = async (req, res) => {
  try {
    const {
      name,
      date,
      start_time,
      end_time,
      location,
      description,
      participants,
    } = req.body;

    // Check for time conflicts
    const conflictResults = await Event.checkConflict(
      location,
      date,
      start_time,
      end_time
    );

    if (conflictResults.length > 0) {
      return res
        .status(409)
        .json({ message: "Time conflict detected for the event." });
    }

    const eventId = await Event.create([
      name,
      date,
      start_time,
      end_time,
      location,
      description,
    ]);

    if (participants && participants.length > 0) {
      const participantIds = await Participant.create(participants);
      await EventParticipant.addParticipants(eventId, participantIds);
    }

    res
      .status(201)
      .json({
        id: eventId,
        name,
        date,
        start_time,
        end_time,
        location,
        description,
        participants,
      });
  } catch (error) {
    console.error("Error creating event:", error);
    res.status(500).json({ message: "Internal server error." });
  }
};

const listEvents = async (req, res) => {
  try {
    const { page = 1, limit = 10 } = req.query;
    const offset = (page - 1) * limit;

    const events = await Event.getAll(offset, limit);
    res.status(200).json({
      message: "Events retrieved successfully.",
      events,
    });
  } catch (error) {
    console.error("Error listing events:", error);
    res.status(500).json({ message: "Internal server error." });
  }
};

const getEventById = async (req, res) => {
  try {
    const { id } = req.params;
    const event = await Event.getById(id);

    if (!event) {
      return res.status(404).json({ message: "Event not found." });
    }

    res.status(200).json({
      message: "Single event retrieved successfully.",
      event,
    });
  } catch (error) {
    console.error("Error retrieving event:", error);
    res.status(500).json({ message: "Internal server error." });
  }
};

const updateEvent = async (req, res) => {
  try {
    const { id } = req.params;
    const { name, date, start_time, end_time, location, description } =
      req.body;

    const affectedRows = await Event.update(id, [
      name,
      date,
      start_time,
      end_time,
      location,
      description,
    ]);

    if (affectedRows === 0) {
      return res.status(404).json({ message: "Event not found." });
    }

    res.status(200).json({
      message: "Event updated successfully.",
      id,
      name,
      date,
      start_time,
      end_time,
      location,
      description,
    });
  } catch (error) {
    console.error("Error updating event:", error);
    res.status(500).json({ message: "Internal server error." });
  }
};

const deleteEvent = async (req, res) => {
  try {
    const { id } = req.params;

    const affectedRows = await Event.delete(id);

    if (affectedRows === 0) {
      return res.status(404).json({ message: "Event not found." });
    }

    res.status(200).json({ message: "Event deleted successfully." });
  } catch (error) {
    console.error("Error deleting event:", error);
    res.status(500).json({ message: "Internal server error." });
  }
};

module.exports = {
  createEvent,
  listEvents,
  getEventById,
  updateEvent,
  deleteEvent,
};
