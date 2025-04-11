# ใช้ Debian 12 เป็น Base Image
FROM debian:12

# ตั้งค่า Environment Variable เพื่อไม่ให้มี Prompt ถามตอนติดตั้ง Package
ENV DEBIAN_FRONTEND=noninteractive

# อัปเดต Package List และติดตั้ง Apache, PHP 8.2 และส่วนขยายที่จำเป็น (mysqli)
RUN apt-get update && \
    apt-get install -y \
    apache2 \
    php8.2 \
    libapache2-mod-php8.2 \
    php8.2-mysql \
    php8.2-mbstring \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# (Optional) เปิดใช้งาน mod_rewrite เผื่อโปรเจกต์มีการใช้ .htaccess
RUN a2enmod rewrite

# กำหนด Working Directory (ไม่จำเป็นต้อง Copy โค้ด เพราะจะใช้ Volume Mount จาก docker-compose)
WORKDIR /var/www/html

# Expose Port 80 ของ Apache
EXPOSE 80

# คำสั่งที่จะรันเมื่อ Container เริ่มทำงาน (รัน Apache ใน Foreground)
CMD ["apache2ctl", "-D", "FOREGROUND"]