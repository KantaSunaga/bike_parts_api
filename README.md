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
