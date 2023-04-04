FROM ghost:5.37.0-alpine
WORKDIR /var/lib/ghost
RUN npm install ghost-azure-storage
RUN mkdir -p content/adapters/storage
ENV storage__active=ghost-azure-storage
ENV storage__ghost-azure-storage__container=uploads
ENV storage__ghost-azure-storage__cdnUrl=teddyswapblog.blob.core.windows.net
ENV storage__ghost-azure-storage__useHttps=true
RUN cp -r node_modules/ghost-azure-storage content/adapters/storage/ghost-azure-storage