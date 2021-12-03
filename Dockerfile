FROM python:3.9

RUN apt-get update && apt-get install -y wget fonts-liberation libasound2 libatk-bridge2.0-0 libatk1.0-0 libatspi2.0-0 \
    libcups2 libdbus-1-3 libdrm2 libgbm1 libgtk-3-0 libnspr4 libnss3 libxcomposite1 libxdamage1 libxfixes3 \
    libxrandr2 xdg-utils

RUN wget https://dl.google.com/linux/direct/google-chrome-unstable_current_amd64.deb
RUN dpkg -i google-chrome-unstable_current_amd64.deb

ADD application.py /

RUN pip3 install pyppeteer

CMD ["python3", "application.py"]