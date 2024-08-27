# Usar una imagen oficial de MediaWiki como base
FROM mediawiki:latest

# Copiar los archivos de la carpeta data al contenedor
COPY ./data /var/www/html

# Configurar los permisos correctos para los archivos
RUN chown -R www-data:www-data /var/www/html

# Exponer el puerto 80
EXPOSE 80
