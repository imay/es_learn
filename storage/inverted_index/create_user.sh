# create index
curl -XPUT 'http://localhost:9200/inverted'
# create user type
# user has a name, and some test points
curl -XPUT 'http://localhost:9200/inverted/user/_mapping' -d '{
    "user" : {
        "_source" : {"enabled" : true},
        "properties" : {
            "name" : {
                "type" : "string",
                "store" : false,
                "index" : "not_analyzed"
            },
            "point" : {
                "type" : "long",
                "store" : false,
                "index" : "not_analyzed"
            }
        }
    }
}
'
