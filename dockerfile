FROM golang:1.20 as builder

# Set the working directory
WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y build-essential
RUN go get github.com/t-rex-tileserver/t-rex

# Copy the config file
COPY config.toml /app/config.toml

# Expose the necessary port
EXPOSE 8080

# Start the T-Rex server
CMD ["t-rex", "serve", "--config", "/app/config.toml"]
