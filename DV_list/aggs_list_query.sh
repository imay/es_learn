# Qeury all ES data and do following work
# aggs0: group by name, sum user's point
# aggs1: sum all users' point
# aggs2: group by name, value count
# aggs3: value_count all users' 
# aggs4: group by name, max user's point
# aggs5: return max point of  all users'
# conclution0: ES will handle all doc value in one field, even this field is a List
curl -XPOST 'http://localhost:9200/dv_list/user/_search?pretty=true' -d '{
"query": {
    "match_all": { }
},
"aggs": {
    "0": {
        "terms": {
            "field" : "name"
        },
        "aggs": {
            "sum_point": {
                "sum": {"field": "point"}
            }
        }
    },
    "1": {
        "sum": {"field": "point"}
    },
    "2": {
        "terms": {
            "field" : "name"
        },
        "aggs": {
            "value_count": {
                "value_count": {"field": "point"}
            }
        }
    },
    "3": {
        "value_count": {"field": "point"}
    },
    "4": {
        "terms": {
            "field" : "name"
        },
        "aggs": {
            "max_point": {
                "max": {"field": "point"}
            }
        }
    },
    "5": {
        "max": {"field": "point"}
    }
}
}'
