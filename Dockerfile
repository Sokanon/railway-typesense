FROM typesense/typesense:27.1

CMD ["/opt/typesense-server", "--data-dir=/data", "--api-port=8108", "--enable-cors"]
