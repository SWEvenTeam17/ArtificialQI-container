FROM python:latest
WORKDIR /usr/src/app
RUN apt update && apt install -y git
COPY requirements.txt ./
RUN pip install -r requirements.txt
RUN git clone https://github.com/SWEvenTeam17/ArtificialQI.git
WORKDIR /usr/src/app/ArtificialQI
COPY .env ./
RUN git checkout feature/docker
EXPOSE 8000
WORKDIR /usr/src/app/ArtificialQI/server/ArtificialQI
CMD python manage.py migrate && daphne -b 0.0.0.0 -p 8000 ArtificialQI.asgi:application