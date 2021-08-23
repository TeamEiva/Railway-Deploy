FROM paman7647/amanpandey:speedo-buster-3.9
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg git
RUN pip install -r https://raw.githubusercontent.com/TeamEiva/EivaBot/main/requirements.txt
COPY . .
COPY ./Eiva.sh .
ADD ./Eiva.sh .
CMD ["bash","Eiva.sh"]
# Team Eiva 
