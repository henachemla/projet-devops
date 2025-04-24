FROM node:22-bookworm

WORKDIR /home/node/app

RUN apt-get update && \
    apt-get install -y --no-install-recommends\
    ca-certificates 

RUN npm install -g pnpm

COPY ./services/node/scripts/entrypoint.sh /scripts/entrypoint.sh
RUN chmod +x /scripts/entrypoint.sh

ENTRYPOINT ["/scripts/entrypoint.sh"]

CMD ["node", "/home/node/app/main.mjs"]