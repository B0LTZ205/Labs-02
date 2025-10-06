#use lightweight Node.js image
FROM node:18-alpine

#set working directory in container
WORKDIR /app


# Copy package.json and install dependencies
ADD package*.json ./
RUN npm intall

# Copy rest of the code
COPY . .

#Expose port 3000
EXPOSE 3000

#run the app
CMD ["node", "app.js"]