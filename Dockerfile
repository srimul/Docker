FROM python:3.4
#Added a comment
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client  lynx \
    && rm -rf /var/lib/apt/lists/*

#WORKDIR /usr/src/app

RUN mkdir -pv /home/app/my0903

COPY  my0903 /home/app/my0903

WORKDIR /home/app/my0903

#you need to create requirements.txt file. 
# This is a comment
RUN pip install Django
RUN pip install psycopg2
#COPY . .

EXPOSE 3333
#you need to copy manage.py file
ENTRYPOINT  ["python", "manage.py", "runserver", "0.0.0.0:3333"]
#Change added in brMerge barnch only.
#Added a comment to trigger the job
