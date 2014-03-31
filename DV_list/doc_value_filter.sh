echo "query ES with not indexed but doc_valued filed(point)"
curl -XPOST 'http://localhost:9200/dv_list/user/_search?pretty=true' -d '{
"query": {
    "match": {
        "point":70 
    }
}
}'
echo "query ES with indexed field(name)"
curl -XPOST 'http://localhost:9200/dv_list/user/_search?pretty=true' -d '{
"query": {
    "match": {
        "name": "马如悦"
    }
}
}'

# conclustion:
# first case verify that ES can not used Doc Value to do some index opration
