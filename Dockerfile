FROM debian:jessie-slim

RUN apt-get update && \
    apt-get install -y rake inkscape texlive texlive-latex-extra texlive-lang-german gnuplot && \
    apt-get clean && \
    rm -rf /var/cache && \
    rm -rf /var/log
