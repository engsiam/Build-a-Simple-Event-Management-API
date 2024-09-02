const db = require('../config/db');

const EventParticipant = {
  // Method to add participants to an event
  addParticipants: async (eventId, participantIds) => {
    try {
      if (!Array.isArray(participantIds)) {
        throw new TypeError("participantIds should be an array");
      }

      console.log('Received participantIds in model:', participantIds);

      // Check if the participants are already associated with the event
      const queryCheck = `
        SELECT participant_id FROM event_participants 
        WHERE event_id = ? AND participant_id IN (?)
      `;
      const [existingParticipants] = await db.promise().query(queryCheck, [eventId, participantIds]);

      const existingParticipantIds = existingParticipants.map(p => p.participant_id);
      console.log('Existing participants in this event:', existingParticipantIds);

      // Filter out participants already linked to the event
      const newParticipants = participantIds.filter(id => !existingParticipantIds.includes(id));
      console.log('New participants to add:', newParticipants);

      if (newParticipants.length === 0) {
        console.log('All participants are already added to the event.');
        return;
      }

      // Insert only the new participants
      const eventParticipantsData = newParticipants.map(participantId => [eventId, participantId]);
      console.log('Data to insert:', eventParticipantsData);
      const queryInsert = `INSERT INTO event_participants (event_id, participant_id) VALUES ?`;

      await db.promise().query(queryInsert, [eventParticipantsData]);

      console.log('Participants added successfully.');

    } catch (error) {
      console.error('Error in addParticipants:', error);
      throw error;
    }
  },

  // Method to remove a participant from an event
  removeParticipant: async (eventId, participantId) => {
    try {
      const query = `DELETE FROM event_participants WHERE event_id = ? AND participant_id = ?`;
      const [result] = await db.promise().query(query, [eventId, participantId]);

      console.log(`Affected rows: ${result.affectedRows}`);
      return result.affectedRows;

    } catch (error) {
      console.error('Error in removeParticipant:', error);
      throw error;
    }
  }
};

module.exports = EventParticipant;
