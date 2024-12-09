FROM node:21-bullseye-slim
WORKDIR /app
ADD . .
RUN npm install
RUN npm run build
CMD ["npm", "run", "dev", "--", "--host"]