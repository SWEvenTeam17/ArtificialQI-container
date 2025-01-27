FROM python:latest
WORKDIR /usr/src/app
RUN apt update && apt install -y git
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/SWEvenTeam17/ArtificialQI.git
WORKDIR /usr/src/app/ArtificialQI
RUN git checkout develop
EXPOSE 8000
WORKDIR /usr/src/app/ArtificialQI/server/ArtificialQI
CMD python manage.py migrate && daphne -b 0.0.0.0 -p 8000 ArtificialQI.asgi:application