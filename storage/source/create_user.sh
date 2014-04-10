# create index
curl -XPUT 'http://localhost:9200/source'
# create user type
# user has a name, and some test points
curl -XPUT 'http://localhost:9200/source/user/_mapping' -d '{
    "user" : {
        "_source" : {"enabled" : true},
        "properties" : {
            "name" : {
                "type" : "string",
                "store" : false,
                "index" : "no"
            },
            "point" : {
                "type" : "long",
                "store" : false,
                "index" : "no"
            }
        }
    }
}
'
