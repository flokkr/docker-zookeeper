

VERSION ?= latest
URL ?= "http://xenia.sote.hu/ftp/mirrors/www.apache.org/hbase/1.3.1/hbase-1.3.1-bin.tar.gz"

build:
	echo $(URL) > hbase/url
	docker build -t flokkr/hbase:$(VERSION) hbase
	docker tag flokkr/hbase:$(VERSION) flokkr/hbase:build
	docker build -t flokkr/hbase-master:$(VERSION) hbase-master
	docker build -t flokkr/hbase-regionserver:$(VERSION) hbase-regionserver

deploy:
	docker push flokkr/hbase:$(VERSION)
	docker push flokkr/hbase-regionserver:$(VERSION)
	docker push flokkr/hbase-master:$(VERSION)
.PHONY: deploy build
