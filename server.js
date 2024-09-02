require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");
const db = require("./config/db");
const eventRoutes = require("./routes/eventRoutes");
const authRoutes = require('./routes/authRoutes')
const { globalRateLimiter } = require("./helpers/rateLimiter");

const app = express();
// add global rate limiter
app.use(globalRateLimiter);
// Middleware for parsing JSON

app.use(bodyParser.json());
//add routes
app.use("/api", eventRoutes);
app.use("/api/auth",authRoutes)

const PORT = process.env.PORT || 8000;

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
