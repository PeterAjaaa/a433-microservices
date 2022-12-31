# Menggunakan base-image node.js versi 14
FROM node:14
# Menciptakan dan menggunakan folder /app di container
WORKDIR "/app"
# Menyalin semua file di working directory sekarang ke working directory container (/app)
COPY . .
# Mensetting environment variable untuk kode node.js
ENV NODE_ENV=production DB_HOST=item-db
# Mengeksekusi command terkait di container
RUN npm install --production --unsafe-perm && npm run build
# Mengekspos port 8080 di container
EXPOSE 8080
# Mengeksekusi command terkait di container
ENTRYPOINT npm start
