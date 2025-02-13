# Use official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Copy workflows, credentials, and configuration files (if needed)
COPY .n8n /home/node/.n8n

# Ensure permissions
RUN chown -R node:node /home/node/.n8n

# Set the user
USER node

# Expose the n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
