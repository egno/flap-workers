#/bin/bash
data=$'{\042houseGuid\042:\042'$@$'\042,\042passportParameterCode\042:null}'

curl 'https://dom.gosuslugi.ru/homemanagement/api/rest/services/passports/search' \
 -H 'State-GUID: /passport/show' \
 -H 'Origin: https://dom.gosuslugi.ru' \
 -H 'Accept-Encoding: gzip, deflate, br' \
 -H 'Accept-Language: en-US,en;q=0.8,ru;q=0.6' \
 -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/51.0.2704.79 Chrome/51.0.2704.79 Safari/537.36' \
 -H 'Content-Type: application/json;charset=UTF-8' \
 -H 'Accept: application/json; charset=utf-8' \
 -H 'Referer: https://dom.gosuslugi.ru/' \
 -H 'Session-GUID: 3af5aec2-a907-433a-9f55-f1db44fd0d74' \
 -H 'Cookie: JSESSIONID=7+fcSrUNFHA7HPbiI-6-z0k9; _ym_uid=147220192067950336; _ym_isad=2; house-view.from-page-breadcrumb=%7B%22url%22%3A%22%23/houses%22%2C%22label%22%3A%22%u0420%u0435%u0435%u0441%u0442%u0440%20%u043E%u0431%u044A%u0435%u043A%u0442%u043E%u0432%20%u0436%u0438%u043B%u0438%u0449%u043D%u043E%u0433%u043E%20%u0444%u043E%u043D%u0434%u0430%22%2C%22backStateName%22%3A%22houses%22%2C%22back%22%3A%7B%22path%22%3A%22/houses%22%2C%22params%22%3A%7B%7D%7D%7D; route=e7ef7e619dcd1dea17bea6eea59032ab; _ym_visorc_28362746=w; GEO_TARGETING="{\"geoTargetingRegion\":{\"guid\":\"1a8430ad-dcc9-43d9-81ea-948b90a25d8b\",\"code\":null,\"rootEntityGuid\":null,\"actual\":true,\"lastUpdateDate\":null,\"createDate\":null,\"aoGuid\":\"1ac46b49-3209-4814-b7bf-a509ea1aecd9\",\"aoLevel\":1,\"postalCode\":null,\"formalName\":\"             \",\"offName\":\"             \",\"shortName\":\"       \",\"parentGuid\":null,\"oktmo\":null,\"regionCode\":\"54\",\"autoCode\":\"0\",\"areaCode\":\"000\",\"cityCode\":\"000\",\"ctarCode\":\"000\",\"placeCode\":\"000\",\"streetCode\":\"0000\",\"extrCode\":\"0000\",\"sextCode\":\"000\",\"updateDate\":null,\"isAddedManually\":null,\"onApproval\":null,\"fiasAddrobjGuid\":null,\"subjectCity\":false,\"outside\":false}}"' \
 -H 'Connection: keep-alive' \
 -H 'Request-GUID: 288fe600-5515-4c24-9623-905a6cd28bfe' \
 --data-binary $data \
 --compressed \
| sed 's/\\/\\\\/g'
