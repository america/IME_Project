FROM gentoo/stage3

RUN emerge --sync
RUN emerge dev-util/lcov
RUN emerge dev-util/cmake
RUN emerge app-emulation/docker

WORKDIR /app
COPY . /app

CMD ["./build.sh"]
