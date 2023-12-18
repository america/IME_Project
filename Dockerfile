FROM gentoo/stage3

RUN emerge --sync
RUN echo "dev-util/lcov ~amd64" >> /etc/portage/package.accept_keywords/lcov && \
    emerge dev-util/lcov
RUN emerge dev-util/cmake
RUN emerge app-emulation/docker

WORKDIR /app
COPY . /app

CMD ["./build.sh"]
