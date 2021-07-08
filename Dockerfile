FROM python:3.8.3-slim as Base

ADD ./main.py /opt/es-data-migrate
ADD ./test.json /opt/es-data-migrate
# ADD ./requirements.txt /opt/es-data-migrate
WORKDIR /opt/es-data-migrate

# RUN apt-get update \
#     && apt-get install -y curl git \
#     && apt-get install -y procps \
#     && apt-get install -y net-tools \
#     && apt-get install -y vim \
#     && apt-get install -y nmap
# RUN pip install -r requirements.txt


# Command to run the executable
CMD python -u ./main.py
