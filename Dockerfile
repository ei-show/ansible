FROM python:3.9

RUN apt-get update

COPY requirements.txt /requirements.txt
RUN pip install --user ansible -r /requirements.txt

WORKDIR /ansible
ENTRYPOINT ["ansible-playbook"]