sh delete_dv_list.sh
sh create_dv_list.sh
curl -XPOST localhost:9200/_bulk --data-binary @batch_data.json
