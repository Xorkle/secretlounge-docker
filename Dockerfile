FROM alpine
RUN apk add python3 git
RUN adduser -u 1000 -D sl
COPY ./src /home/sl/secretlounge-ng
RUN chown -Rv sl:sl /home/sl
USER sl
WORKDIR /home/sl/
#RUN git clone https://github.com/sfan5/secretlounge-ng
WORKDIR secretlounge-ng
RUN pip3 install --user -r requirements.txt
ENTRYPOINT ["./secretlounge-ng"]