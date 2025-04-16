FROM n8nio/n8n

USER root 
RUN npm install -g firecrawl -mcp
USER node

# Environment variable to specify where n8n data should be stored
ENV N8N_DATA_FOLDER=/home/node/.n8n
