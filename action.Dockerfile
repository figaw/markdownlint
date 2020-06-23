FROM figaw/markdownlint:ruby2.7.1-alpine3.12

COPY action.entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
