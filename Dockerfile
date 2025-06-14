# Imagen base de Node.js versión 18
FROM node:18

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de dependencias
COPY package.json package-lock.json ./

# Instala dependencias
RUN npm install

# Copia el resto de los archivos del proyecto
COPY . .

# Expone el puerto en el que corre React (npm start usa 3000)
EXPOSE 3000

# Comando para iniciar la app en modo desarrollo
CMD ["npm", "start"]
