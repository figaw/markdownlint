FROM ruby:2.7.1-alpine3.12

WORKDIR /usr/src/app

RUN gem install mdl

ENTRYPOINT [ "mdl" ]
CMD [ "--help" ]
