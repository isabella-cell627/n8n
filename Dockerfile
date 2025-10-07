# Dockerfile
FROM n8nio/n8n:latest

# تأكد من وجود مجلد الإعدادات
RUN mkdir -p /home/node/.n8n

# أعطِ صلاحيات مناسبة للملفات (لتفادي التحذير الذي ظهر لك)
RUN chmod 600 /home/node/.n8n

# اجعل هذا المجلد يحفظ بياناتك حتى بعد إعادة التشغيل
VOLUME ["/home/node/.n8n"]

EXPOSE 5678

# شغّل n8n مباشرة
CMD ["n8n", "start"]
