FROM ruby:2.6.6
LABEL maintainer="saad.18@gmail.com"
ARG USER_ID
ARG GROUP_ID
ENV APPDIR /app

RUN addgroup --system --gid 1687 user && \
    adduser --system --home $APPDIR --ingroup user --uid 1687 user && \
    chown user:user /app

RUN gem install rails bundler
WORKDIR $APPDIR

USER user

CMD ["/bin/bash"]