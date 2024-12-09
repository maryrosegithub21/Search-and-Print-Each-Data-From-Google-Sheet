# Use the official Node.js 18 image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Set environment variables
ENV REACT_APP_GOOGLE_API_KEY=your_google_api_key
ENV REACT_APP_SPREADSHEET_ID=your_spreadsheet_id

# Start the application
CMD ["npm", "start"]