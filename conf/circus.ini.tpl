[circus]

check_delay = 5

stream_backend = gevent

statsd = {{ CIRCUS_STATSD | default('0') }}

httpd = {{ CIRCUS_HTTPD | default('0') }}
httpd_host = 0.0.0.0
httpd_port = 8888

# FOR circusctl AND adminweb
endpoint = tcp://*:5555

# FOR pub/sub Events
pubsub_endpoint = tcp://*:5556

# FOR pub/sub Stats
stats_endpoint = tcp://127.0.0.1:5557

loglevel = INFO
#logoutput = -

debug = {{ CIRCUS_DEBUG | default('0') }}

include = /etc/circus.d/*.ini
