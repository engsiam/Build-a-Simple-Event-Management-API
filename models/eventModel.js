const db = require('../config/db');

const Event = {
  // Define the create method to insert a new event into the database
  create: async (eventData) => {
    const query = `INSERT INTO events (name, date, start_time, end_time, location, description) VALUES (?, ?, ?, ?, ?, ?)`;
    const [result] = await db.promise().query(query, eventData);
    return result.insertId; // Return the ID of the newly created event
  },

  // Define the checkConflict method to check for time conflicts
  checkConflict: async (location, date, start_time, end_time) => {
    const query = `
      SELECT * FROM events 
      WHERE location = ? 
      AND date = ? 
      AND (
        (? < end_time AND ? > start_time)
      );
    `;
    const [results] = await db.promise().query(query, [
      location, date, start_time, end_time
    ]);
    
    //console.log('Conflict results:', results); // Debug log
    return results;
  },
  
  
  

  // Other methods like getAll, getById, update, delete...
   getAll :async (offset, limit) => {
    const query = `SELECT id, name, date, start_time, end_time, location FROM events LIMIT ?, ?`;
    const [results] = await db.promise().query(query, [parseInt(offset), parseInt(limit)]);
    return results;
  },
  

  getById: async (id) => {
    const query = `SELECT * FROM events WHERE id = ?`;
    const [result] = await db.promise().query(query, [id]);
    return result[0];
  },

  update: async (id, eventData) => {
    const query = `UPDATE events SET name = ?, date = ?, start_time = ?, end_time = ?, location = ?, description = ? WHERE id = ?`;
    const [result] = await db.promise().query(query, [...eventData, id]);
    return result.affectedRows;
  },

  delete: async (id) => {
    const query = `DELETE FROM events WHERE id = ?`;
    const [result] = await db.promise().query(query, [id]);
    return result.affectedRows;
  }
};

module.exports = Event;
