# استخدم الصورة الرسمية
FROM n8nio/n8n:latest

# إنشاء مجلد الإعدادات مع الصلاحيات المناسبة
USER root
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n && \
    chmod 700 /home/node/.n8n

# عد إلى المستخدم الافتراضي
USER node

# استخدم المجلد كـ volume لحفظ الإعدادات
VOLUME ["/home/node/.n8n"]

EXPOSE 5678

# شغّل n8n
CMD ["n8n", "start"]
