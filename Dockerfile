FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y locales rake inkscape tex-common texlive-base texstudio texlive-font-utils texlive texlive-latex-extra texlive-lang-german gnuplot texlive-fonts-extra && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_US -c -f UTF-8 en_US.UTF-8 && \
    rm -rf /var/cache && \
    rm -rf /var/log

ENV LANG en_US.utf8
