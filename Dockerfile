FROM debian:jessie-slim

RUN apt-get update && apt-get install -y rake inkscape texlive texlive-latex-extra gnuplot
