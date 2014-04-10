echo "query ES with not indexed but doc_valued filed(point)"
curl -XPOST 'http://localhost:9200/inverted/user/_search?pretty=true' -d '{
    "query": {
        "match_all":{}
    },
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
