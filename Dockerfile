FROM ghost:5.37.0-alpine
WORKDIR /var/lib/ghost
RUN npm install ghost-azure-storage
RUN mkdir -p content/adapters/storage
RUN cp -r node_modules/ghost-azure-storage content/adapters/storage/ghost-azure-storage