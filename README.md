これは１時間に一回、DB二保存している自転車ECサイトの商品の値段を取得して、
結果を、メールに送信してくれるアプリです。

設定されているcronを見る
```
$ crontab -l
```
cronにデータを反映
```
$ bundle exec whenever --update-crontab
```

cronからデータを削除
```
$ bundle exec whenever --clear-crontab
```
