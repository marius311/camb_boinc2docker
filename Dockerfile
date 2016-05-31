FROM debian:jessie

RUN apt-get update \
    && apt-get -y install \
        curl \
        gfortran \
        libgomp1 \
        make

WORKDIR /root

# install camb
RUN mkdir camb \
    && curl -L https://github.com/marius311/camb/tarball/33558ec | tar zxf - -C camb --strip=1 \
    && cd camb \
    && F90CRLINK="" make camb
    
WORKDIR /root/camb
    
ENTRYPOINT ["/root/camb/camb"]
