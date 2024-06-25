FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install -U -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
