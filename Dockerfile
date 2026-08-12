FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir chromadb sentence-transformers langgraph fastapi uvicorn pydantic

EXPOSE 7860

CMD ["uvicorn", "capstone_project_part3:app", "--host", "0.0.0.0", "--port", "7860"]