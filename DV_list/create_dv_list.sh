# create index
curl -XPUT 'http://localhost:9200/dv_list'
# create user type
# user has a name, and some test points
curl -XPUT 'http://localhost:9200/dv_list/user/_mapping' -d '{
    "user" : {
        "properties" : {
            "name" : {
                "type" : "string",
                "index" : "not_analyzed"
            },
            "point" : {
                "type" : "long",
                "index" : "no",
                "doc_values": true
            }
        }
    }
}
'
