FROM debian:sid

COPY LiteratureReview /LiteratureReview

RUN apt-get update && \
    apt-get install -y latexmk texlive-full && \
    rm -rf /var/cache/*

WORKDIR /dissertation

ENTRYPOINT ["latexmk"]
