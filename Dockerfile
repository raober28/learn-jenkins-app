FROM mcr.microsoft.com/playwright:v1.39.0-jammy
# Disable strict SSL checks before npm install
ENV NODE_TLS_REJECT_UNAUTHORIZED=0
RUN npm config set strict-ssl false \
 && npm config set ca "" \
 && npm install -g --unsafe-perm netlify-cli  \
 && npm install -g serve

RUN apt update
RUN apt install jq -y 