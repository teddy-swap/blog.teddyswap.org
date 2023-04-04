FROM ghost:5.41.0-alpine
WORKDIR /var/lib/ghost
RUN npm install ghost-teddy-azure-storage@2.4.0
RUN mkdir -p content/adapters/storage
RUN cp -r node_modules/ghost-teddy-azure-storage content/adapters/storage/ghost-azure-storage
ENV storage__active=ghost-azure-storage
ENV storage__ghost-azure-storage__container=uploads
ENV storage__ghost-azure-storage__cdnUrl=teddyswapblog.blob.core.windows.net
ENV storage__ghost-azure-storage__useHttps=true