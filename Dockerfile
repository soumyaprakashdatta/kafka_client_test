FROM rockylinux:9.3

COPY bin/kafka_client_test_linux /app/kafka_client

CMD [ "/app/kafka_client" ]

