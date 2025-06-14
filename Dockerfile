# Imagen base de Node.js versión 18
FROM node:18 AS builder

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de dependencias
COPY package.json package-lock.json ./

# Instala dependencias
RUN npm install

# Copia el resto de los archivos del proyecto
COPY . .

# Construye la aplicación para producción
RUN npm run build

# Usa una imagen ligera de Nginx para servir la aplicación
FROM nginx:alpine
COPY --from=builder /app/build /usr/share/nginx/html

# Expone el puerto 80 para Nginx
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
