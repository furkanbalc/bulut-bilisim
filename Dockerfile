# FROM python:3.8-slim

# WORKDIR /app

# COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt

# COPY . .

# CMD ["python", "app.py"]
# Kullanılacak temel imajı belirle
FROM python:3.8-slim-buster

# Çalışma dizinini belirle
WORKDIR /app

# Bulunduğumuz dizindeki dosyaları container içine kopyala
COPY . /app

# requirements.txt dosyasındaki gerekli paketleri yükle
RUN pip install --no-cache-dir -r requirements.txt

# Dünya adında bir ortam değişkeni tanımla
ENV NAME World

EXPOSE 5000
# Container başlatıldığında app.py dosyasını çalıştır
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]