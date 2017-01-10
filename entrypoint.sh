#!/bin/sh

cat <<EOF >./123
#!/bin/sh
/usr/local/bin/curator_cli --host ${ES_HOST:-elasticsearch} --port ${ES_PORT:-9200} delete_indices --filter_list '[{"filtertype":"age","source":"creation_date", "direction":"older","unit":"days","unit_count":${ES_DAYS:-14}},{"filtertype":"pattern","kind":"prefix","value":"logstash-"}]' --ignore_empty_list
EOF

exec "$@"
