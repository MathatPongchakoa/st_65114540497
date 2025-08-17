FROM python:3.12

# กำหนด working dir
WORKDIR /app

# copy code ทั้งหมด
COPY . .

# install dependencies
RUN pip install -r requirements.txt

# copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# ใช้ entrypoint script แทน CMD เดิม
CMD ["/entrypoint.sh"]
