# insert user info
curl -XPUT 'http://localhost:9200/parent_child/user/1' -d '{
    "name" : "赵纯"
}'
curl -XPUT 'http://localhost:9200/parent_child/user/2' -d '{
    "name" : "胡杰"
}'
curl -XPUT 'http://localhost:9200/parent_child/user/3' -d '{
    "name" : "董红臣"
}'
curl -XPUT 'http://localhost:9200/parent_child/user/4' -d '{
    "name" : "黄振"
}'
curl -XPUT 'http://localhost:9200/parent_child/user/5' -d '{
    "name" : "马如悦"
}'
curl -XPUT 'http://localhost:9200/parent_child/user/6' -d '{
    "name" : "贾菁辉"
}'
curl -XPUT 'http://localhost:9200/parent_child/user/7' -d '{
    "name" : "宫磊"
}'

# insert child
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=1' -d '{
    "tag_name" : "足球"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=1' -d '{
    "tag_name" : "篮球"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=1' -d '{
    "tag_name" : "游泳"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=2' -d '{
    "tag_name" : "足球"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=2' -d '{
    "tag_name" : "90后"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=2' -d '{
    "tag_name" : "利物浦"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=3' -d '{
    "tag_name" : "足球"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=3' -d '{
    "tag_name" : "80后"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=3' -d '{
    "tag_name" : "黑龙江人"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=4' -d '{
    "tag_name" : "Doris"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=4' -d '{
    "tag_name" : "80后"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=4' -d '{
    "tag_name" : "江西人"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=5' -d '{
    "tag_name" : "T8"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=5' -d '{
    "tag_name" : "80后"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=5' -d '{
    "tag_name" : "山东人"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=6' -d '{
    "tag_name" : "项目经理"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=6' -d '{
    "tag_name" : "80后"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=6' -d '{
    "tag_name" : "天津人"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=7' -d '{
    "tag_name" : "T6"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=7' -d '{
    "tag_name" : "70后"
}'
curl -XPOST 'http://localhost:9200/parent_child/user_tag/?parent=7' -d '{
    "tag_name" : "黑龙江人"
}'
