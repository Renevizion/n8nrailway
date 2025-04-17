FROM n8nio/n8n

USER root

# Install firecrawl and fix missing module
RUN npm install -g firecrawl n8n-nodes-globals

# Clone the repo for AI workflows/tools
RUN git clone https://github.com/n8n-io/self-hosted-ai-starter-kit.git /starter-kit

# Optional: copy workflows from starter kit into n8n's default workflow folder
# RUN cp /starter-kit/workflows/* /home/node/.n8n

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER node

ENV N8N_DATA_FOLDER=/home/node/.n8n

ENTRYPOINT ["/entrypoint.sh"]
