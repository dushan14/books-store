FROM python:3.7

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

ENV APP_SETTINGS="config.DevelopmentConfig"
ENV DATABASE_URL="mysql://db_user:db_user_pw@machine_ip_address/book_store"

CMD ["python","manage.py", "runserver","-h","0.0.0.0","-p","5000"]

