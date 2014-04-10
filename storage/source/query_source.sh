echo "query ES with not indexed but doc_valued filed(point)"
curl -XPOST 'http://localhost:9200/source/user/_search?pretty=true' -d '{
    "query": {
        "match_all": { }
    },
    "_source": ["name", "point"]
}'
