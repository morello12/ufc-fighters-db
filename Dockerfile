FROM openaustralia/buildstep:latest

COPY requirements.txt .

RUN apt update -y \
    && apt-get install -y python-pip
	
RUN pip install -r requirements.txt

RUN useradd morph

USER morph
