FROM python:3.12.2-alpine
RUN apk add --no-cache gcc musl-dev linux-headers

WORKDIR /src

COPY ./requirements.txt .
RUN pip3 install --no-cache-dir --upgrade -r requirements.txt
EXPOSE 5050

COPY . .

CMD ["python3", "-u", "manage.py", "runserver", "0.0.0.0:5050"]
