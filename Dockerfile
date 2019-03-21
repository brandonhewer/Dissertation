FROM debian:sid

COPY Definitions /Definitions
COPY LiteratureReview /LiteratureReview
COPY Dissertation.tex .

RUN apt-get update && \
    apt-get install -y latexmk texlive-full && \
    rm -rf /var/cache/*

ENTRYPOINT ["latexmk"]
