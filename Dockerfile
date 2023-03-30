# Basisimage
FROM node:19-alpine

# Setze Arbeitsverzeichnis
WORKDIR /src

# Kopiere Paketdateien
COPY . . 

# Installiere Abhängigkeiten
RUN npm install
ENV NODE_ENV production
RUN npm run build

# Kopiere Anwendungscode
# COPY . .

# Öffne Port
EXPOSE 3000

# Starte Anwendung
CMD ["npm","run", "start"]