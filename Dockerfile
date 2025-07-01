FROM python:3.11-slim

WORKDIR /app

# התקנת ספריות פייתון
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# העתקת הקוד והתמונה
COPY . .

# הפקודה שתורץ
CMD ["python", "main.py"]
