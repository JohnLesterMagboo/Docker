# Use the official node image as a base
FROM node:latest

# Set the working directory
# WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
# RUN npm install

# Copy the rest of the code
# COPY . .

# Expose the port that the app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
