FROM python:3.12
WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

# คัดลอก entrypoint และลบ CRLF กันพลาด
COPY entrypoint.sh /entrypoint.sh
RUN sed -i 's/\r$//' /entrypoint.sh && chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
