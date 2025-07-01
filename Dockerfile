y and smaller image size.
FROM node:18-alpine

WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if present) to the working directory.
# This allows caching of npm install if dependencies don't change.
COPY package*.json ./

# Install application dependencies.
RUN npm install

# Copy the rest of the application source code to the working directory.
COPY . .

# Expose the port your Node.js application listens on.
# Replace 3000 with the actual port your app uses.
EXPOSE 3000

# Define environment variables (

# Command to run the application when the container starts.
CMD ["node", "server.js"]