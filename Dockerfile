FROM bytesized/base

RUN apk --update add ffmpeg flac lame openjdk7-jre
RUN mkdir /app && \
    wget -qO- http://prdownloads.sourceforge.net/subsonic/subsonic-6.0-standalone.tar.gz | tar xzC /app

COPY /static /
RUN chmod +x /app/subsonic.sh
VOLUME /data /config
EXPOSE 4040
