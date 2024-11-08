FROM bitnami/discourse:3

RUN apt-get update && apt-get install sudo runit -y 

COPY ./scripts /opt/bitnami/scripts


EXPOSE 8080

ENV APP_VERSION="3.3.2" \
    BITNAMI_APP_NAME="discourse" \
    PATH="/opt/bitnami/python/bin:/opt/bitnami/common/bin:/opt/bitnami/ruby/bin:/opt/bitnami/postgresql/bin:/opt/bitnami/node/bin:/opt/bitnami/brotli/bin:/opt/bitnami/discourse/app/assets/javascripts/node_modules/ember-cli/bin:$PATH"


ENTRYPOINT [ "/opt/bitnami/scripts/discourse/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/discourse/run.sh" ]