FROM gentoo/stage3

ENV CXX $(which g++)

ENV MAKEOPTS=-j4
RUN emerge --sync
RUN echo "dev-util/lcov ~amd64" >> /etc/portage/package.accept_keywords/lcov && \
    emerge dev-util/lcov
RUN emerge dev-util/cmake
RUN emerge app-containers/docker

WORKDIR /app
COPY . /app

RUN chmod +x /app/build.sh

CMD ["sh", "./build.sh"]
