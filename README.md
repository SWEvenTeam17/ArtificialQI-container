# ArtificialQI container
Questo repository contiene i file necessari per l'esecuzione dell'applicativo ArtificialQI in un container (Docker).

## Istruzioni
Per avviare l'applicazione scrivere rinominare il file **.env.example** in **.env** e inserire una chiave API di Gemini valida dopo il simbolo **=** nella prima riga del file.
Avviare successivamente il container con il comando `sudo docker compose up -d --build` e accedere all'interfaccia dell'applicativo all'indirizzo `http://localhost:3000`.

## Personalizzazioni
Di default il container scarica e installa `llama3.2` come unico LLM disponibile.
È possibile aggiungerne altri scrivendo il comando `ollama pull <nome_modello>` all'interno del file **start-ollama.sh**, sostituendo `<nome_modello>` con il nome del modello da scaricare.

