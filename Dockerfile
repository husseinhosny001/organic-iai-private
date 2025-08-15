# استخدم صورة بايثون رسمية كقاعدة
FROM python:3.9-slim

# قم بتعيين مجلد العمل داخل الحاوية
WORKDIR /app

# انسخ ملف المتطلبات وقم بتثبيتها
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# انسخ باقي ملفات المشروع إلى الحاوية
COPY . .

# أمر تشغيل التطبيق عند بدء الحاوية
CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "10000"]
