curl -XPOST 'http://localhost:9200/parent_child/_search' -d '{
"query": {
    "has_child": {
        "type": "user_tag",
            "query": {
                "term": {
                    "tag_name": "足球"
                }
            }
    }
}
}'
