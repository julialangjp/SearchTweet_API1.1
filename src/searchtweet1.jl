using OAuth
using JSON
using Dates
using TimeZones

# 取得したAPIキーを記入する
apikey = "................"
apisecret = "................"
accesstoken = "................"
accesstokensecret = "................"

endpoint = "https://api.twitter.com/1.1/search/tweets.json"
options = Dict("q" => "コロナ", "count" => 10)
r = oauth_request_resource(endpoint, "GET", options, apikey, apisecret, accesstoken, accesstokensecret)

data = JSON.parse(String(r.body))
for s in data["statuses"]
    # TweetのID
    id = s["id"]
    # Twitterの日時表記を解析して日本時間に変換する
    dt = astimezone(ZonedDateTime(s["created_at"], dateformat"e u d H:M:S zzzz y"), tz"Asia/Tokyo")
    # アカウント名
    name = s["user"]["name"]
    # 名前
    screen_name = s["user"]["screen_name"]
    # Tweet本文：改行を空白に変換
    text = replace.(s["text"], "\n"=>" ")
    
    println(id, "\t", dt, "\t", name, "\t", screen_name, "\t", text )
end
