# create index
curl -XPUT 'http://localhost:9200/doc_value'
# create user type
# user has a name, and some test points
curl -XPUT 'http://localhost:9200/doc_value/user/_mapping' -d '{
    "user" : {
        "_source" : {"enabled" : false},
        "properties" : {
            "name" : {
                "type" : "string",
                "store" : false,
                "index" : "no",
                "doc_value" : true
            },
            "point" : {
                "type" : "long",
                "store" : false,
                "index" : "no",
                "doc_value" : true
            }
        }
    }
}
'
