FROM node:14.0

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production 
# ( ci: doesnt write package.json or package-lock.json, freezes installations, 
#Requires package-lock.json to be present, Removes node_modules and install all dependencies at once )
# (--only=production doesnt install dev dependencies)

# Bundle app source
COPY . ./

EXPOSE 8080

CMD [ "node", "server.js" ]