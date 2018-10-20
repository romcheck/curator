#!/bin/sh

cat <<EOF > /etc/periodic/daily/deleteindices
#!/bin/sh
/usr/local/bin/curator_cli --host ${ES_HOST:-elasticsearch} --port ${ES_PORT:-9200} delete_indices --ignore_empty_list --filter_list '[{"filtertype":"age","source":"creation_date", "direction":"older","unit":"days","unit_count":${ES_DAYS:-14}},{"filtertype":"kibana","exclude":true}]'
EOF

chmod +x /etc/periodic/daily/deleteindices

exec "$@"
