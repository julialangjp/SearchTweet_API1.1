# SearchTweet_API1.1
TwitterAPI1.1を呼び出して、任意の文字列でTweetを検索します

## Installation
```julia
using Pkg
Pkg.add("OAuth")
Pkg.add("JSON")
Pkg.add("TimeZones")
```

## Usage
### APIキーの記入
ソースコード（searchtweet1.jl）にはAPIキーが記入されていないので、このままでは動作しません。
[Twitter開発者プラットフォーム](https://developer.twitter.com/ja)にて取得したAPIキーを記入してください。

## 検索文字列、検索数の設定
そのままでも、結果は出ますが、検索文字列、検索数の設定を適宜変更してください。
検索文字列は、日本語でも英語でもそのまま記入してかまいません。

### コンソールで実行
```julia
> julia searchtweet1.jl
```

### 結果出力
画面に結果が表示されます。

## 参照
　次のページに簡単な解説を書きました。  
　　  [JuliaでTwitterを検索（その1）「TwitterAPI1.1」(julialang.jp)](https://julialang.jp/2022/04/14/searchtweets1/)
