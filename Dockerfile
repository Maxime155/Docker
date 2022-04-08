FROM node:latest
LABEL maintainer="Mostafa Badra Meuley Maxime Gaman Steven"

# Create and change working directory
WORKDIR /root/tpfinal/

# Add application requirements
COPY /kutt .

# Install requirements
RUN npm install

# Create a specific user to run the application
#RUN adduser -D toto -u 1000
#USER 1000

EXPOSE 80

# Launch application
ENTRYPOINT ["npm"]
CMD ["start"]