FROM alpine:latest

RUN apk update && apk add --no-cache \
git \
unzip \
vim \
bash

RUN apk add nodejs
RUN apk add npm
RUN npm install sails -g
# for auto restart the node or sails lift.
RUN npm install forever -g 
RUN npm install nodemon -g
RUN npm install sails-mongo -g
# RUN npm install bootstrap
WORKDIR /node

CMD ["/bin/bash"]

EXPOSE 80

# ENV PATH="/app/vendor/bin:${PATH}"