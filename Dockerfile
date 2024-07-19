FROM python:3.8 
RUN apt-get update && \
    apt-get install -y build-essential

ENV FLASK_APP=core/server.py 
WORKDIR /app 
COPY requirements.txt .    
RUN pip install --no-cache-dir -r requirements.txt
COPY . .   
# RUN rm core/store.sqlite3
RUN flask db upgrade -d core/migrations/
EXPOSE 7755  
CMD [ "bash", "run.sh" ]