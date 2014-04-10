echo "query ES with not indexed but doc_valued filed(point)"
curl -XPOST 'http://localhost:9200/inverted/user/_search?pretty=true' -d '{
    "query": {
        "match_all":{}
    },
    "fielddata_fields": [ "_ttl", "_timestamp", "_all", "_routing", "_version", "_parent", "name", "_id", "_type", "_uid", "point", "version"],
    "aggs": {
        "0": {
            "terms": {"field":"name"},
            "aggs":{
                "point": {
                    "sum": {"field":"point"}
                }
            }
        }
    }
}'
