# Curator — elasticsearch helper for managing indices

Based on python:alpine image.

Tasks are performing by cron.

Default daily task removes indices older then two weeks. Kibana indeces are ignored.

## Environment vars

* ES_HOST — elasticsearch host  
  Default value: `elasticsearch`

* ES_PORT — elasticsearch port  
  Default value: `9200`

* ES_DAYS — how many days elasticsearch should keep indeces  
  Default value: `14`
