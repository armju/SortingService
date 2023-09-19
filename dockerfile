# Use an official Node.js runtime as a base image
FROM node:16

# Set the working directory inside the container
WORKDIR /src

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the application dependencies inside the container
RUN npm install

# Bundle the application source inside the container
COPY . .

# Specify that the service listens on port 3000
EXPOSE 3000

# Define the command to run the application
CMD [ "npm", "start" ]