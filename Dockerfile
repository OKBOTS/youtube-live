# Use official Node.js v18 image as base
FROM node:16

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all other source code to the working directory
COPY . .

# Expose the port your app runs on
EXPOSE 8000

# Command to run your app using npm
CMD ["node", "."]
