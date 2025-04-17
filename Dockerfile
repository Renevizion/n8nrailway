FROM n8nio/n8n

# Switch to root user to install dependencies
USER root

# Install MCP nodes and other required packages
RUN npm install -g n8n-nodes-mcp firecrawl n8n-nodes-globals

# Optionally, clone the AI starter kit workflows if you need them
RUN git clone https://github.com/n8n-io/self-hosted-ai-starter-kit.git /starter-kit

# Switch back to the default node user
USER node

# Set n8n data folder path for persistent data storage
ENV N8N_DATA_FOLDER=/home/node/.n8n

# Expose the port for n8n
EXPOSE 5678

# Start n8n normally (no entrypoint script needed if no custom logic)
CMD ["n8n"]
