FROM alpine:latest

RUN sed -i 's/v3.16/edge/g' /etc/apk/repositories
RUN apk update && apk add neovim git nodejs npm yarn

WORKDIR /root/.config/nvim/
COPY nvim-lua /root/.config/nvim
