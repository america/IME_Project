FROM gentoo/stage3

RUN emerge --sync
RUN emerge dev-util/lcov dev-util/cmake app-emulation/docker

WORKDIR /app
COPY . /app

CMD ["./build.sh"]
