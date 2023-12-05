# Use a imagem oficial do Node.js
FROM node:14

# Crie um diretório de trabalho na imagem
WORKDIR /usr/src/app

# Copie o arquivo package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie todos os arquivos do diretório atual para o diretório de trabalho na imagem
COPY . .

# Exponha a porta 3000 (ou a porta que a sua aplicação usa)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
