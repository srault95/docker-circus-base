[circus]

check_delay = 5

stream_backend = gevent

statsd = {{ CIRCUS_STATSD | default('False') }}

httpd = {{ CIRCUS_HTTPD | default('False') }}
httpd_host = 0.0.0.0
httpd_port = 8888

# FOR circusctl AND adminweb
endpoint = {{ CIRCUS_ENDPOINT | default('tcp://127.0.0.1:5555') }}

# FOR pub/sub Events
pubsub_endpoint = {{ CIRCUS_PUBSUB_ENDPOINT | default('tcp://127.0.0.1:5556') }}

# FOR pub/sub Stats
stats_endpoint = {{ CIRCUS_STATS_ENDPOINT | default('tcp://127.0.0.1:5557') }}

loglevel = {{ CIRCUS_LOG_LEVEL | default('INFO') }}
#logoutput = -

debug = {{ CIRCUS_DEBUG | default('0') }}

include = /etc/circus.d/*.ini
