sh delete_user.sh
sh create_user.sh
curl -XPOST localhost:9200/_bulk --data-binary @batch_data.json
