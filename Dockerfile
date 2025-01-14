# Use an official Node.js runtime as the base image
FROM node:14.5.0-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application source code to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Entrypoint command to run the application
ENTRYPOINT ["node", "index.js"]
