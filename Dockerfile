# Use an official Node.js runtime as the base image
FROM node:10

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application source code to the container
COPY . .

# Expose port 3000
EXPOSE 80

# Command to run the application
CMD ["node", "index.js"]
