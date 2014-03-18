# create index
curl -XPUT 'http://localhost:9200/parent_child'
# create user type
curl -XPUT 'http://localhost:9200/parent_child/user/_mapping' -d '{
    "user" : {
        "properties" : {
            "name" : {
                "type" : "string",
                "index" : "not_analyzed"
            }
        }
    }
}
'
#create tag
curl -XPUT 'http://localhost:9200/parent_child/user_tag/_mapping' -d '{
    "user_tag" : {
        "_parent" : {
            "type" : "user"
        },
        "properties" : {
            "tag_name" : {
                "type" : "string",
                "index" : "not_analyzed"
            }
        }
    }
}
'
