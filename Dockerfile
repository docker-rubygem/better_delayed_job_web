FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.3.5

RUN gem install better_delayed_job_web --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["better_delayed_job_web"]
CMD ["--help"]
