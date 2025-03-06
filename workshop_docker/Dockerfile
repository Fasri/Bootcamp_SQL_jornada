# Usa a imagem base com Python 3.13
FROM python:3.13

# Instala o Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:$PATH"

# Define o diretório de trabalho corretamente
WORKDIR /app

# Copia SOMENTE os arquivos necessários primeiro (evita reinstalar dependências à toa)
COPY pyproject.toml poetry.lock ./

# Instala as dependências antes de copiar o restante do código
RUN poetry install --no-root

# Agora copia o resto do código para dentro do container
COPY . .

# Expõe a porta do Streamlit
EXPOSE 8501

# Comando para rodar o Streamlit
ENTRYPOINT ["poetry", "run", "streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]
