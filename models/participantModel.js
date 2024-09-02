const db = require('../config/db');

const Participant = {
  create: async (participants) => {
    const participantData = participants.map(email => [email]);

    const query = `INSERT INTO participants (email) VALUES ? ON DUPLICATE KEY UPDATE id=LAST_INSERT_ID(id), email=email`;
    const [result] = await db.promise().query(query, [participantData]);

    // Fetching all participant IDs that were inserted or updated
    const insertedIdsQuery = `SELECT id FROM participants WHERE email IN (?)`;
    const [ids] = await db.promise().query(insertedIdsQuery, [participants]);

    // Returning an array of participant IDs
    return ids.map(row => row.id);
  },

  remove: async (participantId) => {
    const query = `DELETE FROM participants WHERE id = ?`;
    const [result] = await db.promise().query(query, [participantId]);
    return result.affectedRows;
  }
};

module.exports = Participant;
