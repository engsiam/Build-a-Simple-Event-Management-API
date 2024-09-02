const EventParticipant = require('../models/eventParticipantModel');

const addParticipantsController = async (req, res) => {
  try {
    const { id } = req.params; // event ID
    const { participants } = req.body; // array of participant IDs

    if (!participants || !Array.isArray(participants)) {
      return res.status(400).json({ message: 'Participants must be provided as an array.' });
    }

    await EventParticipant.addParticipants(id, participants);

    res.status(200).json({ message: 'Participants added successfully.' });

  } catch (error) {
    console.error('Error adding participants:', error);
    res.status(500).json({ message: 'Internal server error.' });
  }
};

const removeParticipantController = async (req, res) => {
  try {
    const { id, participantId } = req.params; // event ID and participant ID

    const result = await EventParticipant.removeParticipant(id, participantId);

    if (result === 0) {
      return res.status(404).json({ message: 'Participant not found.' });
    }

    res.status(200).json({ message: 'Participant removed successfully.' });

  } catch (error) {
    console.error('Error removing participant:', error);
    res.status(500).json({ message: 'Internal server error.' });
  }
};

module.exports = {
  addParticipantsController,
  removeParticipantController,
};
