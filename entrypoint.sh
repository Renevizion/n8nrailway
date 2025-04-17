#!/bin/bash

# Start firecrawl MCP server in background
firecrawl -mcp &

# Start n8n as the main process
n8n
