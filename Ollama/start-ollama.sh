#!/bin/sh
# start-ollama.sh

# Start the Ollama service
ollama serve &
# Wait a bit to ensure the service starts
sleep 10
# Pull the model
ollama pull moondream
# Wait for the Ollama service to keep running
wait
