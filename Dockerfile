FROM gentoo/stage3-amd64

RUN emerge --sync
RUN emerge dev-util/lcov

WORKDIR /app
COPY . /app

CMD ["./build.sh"]
