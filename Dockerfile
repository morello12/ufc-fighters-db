FROM openaustralia/buildstep:latest
git add .
git commit -m "Updated scraper code"
git push origin main

COPY requirements.txt .

RUN apt update -y \
    && apt-get install -y python-pip
	
RUN pip install -r requirements.txt

RUN useradd morph

USER morph
