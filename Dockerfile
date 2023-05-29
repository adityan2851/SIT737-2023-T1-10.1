
# Use an official Node.js runtime as the base image
FROM --platform=linux/amd64 node:14

# Set the working directory inside the container
WORKDIR /

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the entire application code into the container
COPY . .

# Expose a port (if your application needs to listen on a specific port)
EXPOSE 3000

# Define the command to run your application
CMD ["node", "server.js"]
