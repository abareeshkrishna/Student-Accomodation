"use strict";

// Log entrypoint message
console.log("entrypoint");

try {
  // Include the app.js file
  const app = require("./app/app.js");
  console.log("app.js file loaded successfully.");
  
  // Start the server
  const PORT = process.env.PORT || 3000;
  app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
  }).on('error', (err) => {
    console.error("Failed to start server:", err);
  });

} catch (err) {
  console.error("Error loading app.js file:", err);
}
