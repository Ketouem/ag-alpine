FROM alpine:latest

ENV GIT_REPO https://github.com/ggreer/the_silver_searcher.git
ENV BUILD_TOOLS "git automake autoconf make g++"

RUN apk --update add ${BUILD_TOOLS} pcre-dev xz-dev

RUN git clone ${GIT_REPO}

WORKDIR ./the_silver_searcher
RUN ./build.sh

# Cleaning
RUN apk del ${BUILD_TOOLS}
RUN rm -fr /var/apk/caches
