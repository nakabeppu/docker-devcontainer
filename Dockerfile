FROM python:3.10
WORKDIR /work

# システムパッケージのインストール
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    curl \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# pip をアップグレード
RUN pip install --no-cache-dir --upgrade pip

# Python 依存関係のインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# ワークのソースコードをコンテナ内にコピー
COPY . .