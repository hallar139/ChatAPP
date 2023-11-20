# Use an official Node.js runtime as a base image
FROM node:latest

# Set the working directory in the container
WORKDIR /myapp

# Copy package.json and package-lock.json (if it exists) to the container
COPY package*.json ./

# Install dependencies using npm
RUN npm install

# Copy the rest of your application code to the container
COPY . .

# Expose the port your application will run on
EXPOSE 5000

# Specify the command to start your application
CMD ["npm", "start", "app.js"]
