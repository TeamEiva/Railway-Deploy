FROM python:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg python3-pip opus-tools git
ENV PYTHONUNBUFFERED=1
RUN pip install -r https://raw.githubusercontent.com/TeamEiva/EivaBot/main/requirements.txt
COPY . .
CMD ["bash","Eiva.sh"]
# Team Eiva 
