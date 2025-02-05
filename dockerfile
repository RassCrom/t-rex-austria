# Use the official t-rex image
FROM sourcepole/t-rex

# Copy configuration file
COPY config.toml /etc/config.toml

# Expose the default t-rex port
EXPOSE 6767

# Run t-rex in serve mode
CMD ["t_rex", "serve", "--config", "/etc/config.toml"]
