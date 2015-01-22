[circus]
stream_backend = gevent
statsd = {{ CIRCUS_STATSD | default('False') }}
httpd = {{ CIRCUS_HTTPD | default('False') }}

httpd_host = 0.0.0.0
httpd_port = 8888

endpoint = tcp://127.0.0.1:5555
pubsub_endpoint = tcp://127.0.0.1:5556
stats_endpoint = tcp://127.0.0.1:5557

loglevel = INFO
#logoutput = stdout

include = /etc/circus.d/*.ini
