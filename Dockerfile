FROM python:3.9.0
EXPOSE 5000
WORKDIR /app
RUN pip install flask
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
RUN pip install flask-jwt-extended
