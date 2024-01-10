# Base image
FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Copy package-lock
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy app source
COPY . .

# Creates a "dist" folder with the production build
RUN npm run build

# Expose the port on which the app will run
EXPOSE 3210

# Start the server using the production build
CMD ["npm", "run", "start:prod"]