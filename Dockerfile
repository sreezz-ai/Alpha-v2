FROM fusuf/whatsasena:latest

RUN git clone https://github.com/sreezz-ai/Alpha-v2 /root/WhatsAsena
WORKDIR /root/WhatsAsena/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
