echo "query ES with not indexed but doc_valued filed(point)"
curl -XPOST 'http://localhost:9200/dv_list/user/_search?pretty=true' -d '{
"query": {
"match_all": {
    }
},
    "script_fields": {
        "name": {
            "script" : "doc[\u0027name\u0027].values"
        },
        "point": {
            "script" : "doc[\u0027point\u0027].values"
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

echo "query ES with not indexed but doc_valued filed(point)"
curl -XPOST 'http://localhost:9200/dv_list/user/_search?pretty=true' -d '{
"query": {
"match_all": {
    }
},
    "fielddata_fields": ["name"]
}'

echo "query ES with not indexed but doc_valued filed(point)"
curl -XPOST 'http://localhost:9200/dv_list/user/_search?pretty=true' -d '{
"query": {
"match_all": {
    }
},
    "_source": "point"
}'

# conclustion:
# first case verify that ES can not used Doc Value to do some index opration
