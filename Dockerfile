FROM ruby:2.6.6
LABEL maintainer="saad.18@gmail.com"
ARG USER_ID
ARG GROUP_ID
RUN gem install rails bundler

ENV APPDIR /bugs

RUN addgroup --system --gid 1687 user && \
    adduser --system --home $APPDIR --ingroup user --uid 1687 user && \
    chown user:user $APPDIR

WORKDIR $APPDIR

USER user

CMD ["/bin/bash"]