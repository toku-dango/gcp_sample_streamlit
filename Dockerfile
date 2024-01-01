FROM python:3.11.1

WORKDIR /app

RUN python -m ensurepip
RUN python -m pip install --upgrade pip

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
COPY . .

EXPOSE 8080

CMD streamlit run --server.port 8080 src/app.py
