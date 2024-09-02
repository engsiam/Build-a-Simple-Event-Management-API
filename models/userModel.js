const db = require('../config/db');

const User = {
  create: async (username, hashedPassword, email, role = 'user') => {
    const query = `
      INSERT INTO users (username, password, email, role) 
      VALUES (?, ?, ?, ?)
    `;
    const [result] = await db.promise().query(query, [username, hashedPassword, email, role]);
    return result.insertId;
  },

  findByUsername: async (username) => {
    const query = `SELECT * FROM users WHERE username = ?`;
    const [rows] = await db.promise().query(query, [username]);
    return rows[0];
  },

  findById: async (id) => {
    const query = `SELECT * FROM users WHERE id = ?`;
    const [rows] = await db.promise().query(query, [id]);
    return rows[0];
  },

  // Optionally, add methods for updating or deleting users
  updateUser: async (id, username, email, role) => {
    const query = `
      UPDATE users SET username = ?, email = ?, role = ? 
      WHERE id = ?
    `;
    const [result] = await db.promise().query(query, [username, email, role, id]);
    return result.affectedRows;
  },

  deleteUser: async (id) => {
    const query = `DELETE FROM users WHERE id = ?`;
    const [result] = await db.promise().query(query, [id]);
    return result.affectedRows;
  }
};

module.exports = User;
