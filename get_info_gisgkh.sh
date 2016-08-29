#/bin/bash
curl "$@" \
-H "State-GUID: /house-view" \
-H "Accept-Encoding: gzip, deflate, sdch, br" \
-H "Accept-Language: en-US,en;q=0.8,ru;q=0.6" \
-H "Cache-Control: max-age=0" \
-H "Referer: https://dom.gosuslugi.ru/" -H "Connection: keep-alive" \
-H "If-Modified-Since: 0" \
--compressed \
| sed 's/\\/\\\\/g'