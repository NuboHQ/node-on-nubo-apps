FROM node:12-alpine

RUN addgroup -S app && adduser -S -g app app

# Turn down the verbosity to default level.
ENV NPM_CONFIG_LOGLEVEL warn

RUN mkdir -p /home/app

# COPY code packages and install, adding this as a separate
# entry allows caching of npm install
WORKDIR /home/app

COPY . .

RUN npm install

RUN chown app:app -R /home/app \
    && chmod 777 /tmp

USER app

ENV PORT="5555"

CMD npm start
