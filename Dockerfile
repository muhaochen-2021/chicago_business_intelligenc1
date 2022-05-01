FROM python:3.8
ENV PORT 8080
ENV HOSTDIR 0.0.0.0
EXPOSE 8080
COPY . /usr/src/mypython
WORKDIR /usr/src/mypython
ENTRYPOINT [ "python" ]
RUN pip install -r requirements.txt
CMD [ "./get_data.py" ]