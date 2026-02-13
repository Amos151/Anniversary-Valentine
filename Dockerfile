# /Dockerfile
FROM node:20-alpine

# install a tiny static file server
RUN npm i -g serve

WORKDIR /app
COPY . .

# Most platforms set PORT automatically (Railway/Render/etc).
# Fallback to 8080 locally.
CMD ["sh", "-c", "serve -s . -l ${PORT:-8080}"]
