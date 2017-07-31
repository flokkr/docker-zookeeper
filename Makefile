
VERSION ?= latest
URL ?= http://xenia.sote.hu/ftp/mirrors/www.apache.org/zookeeper/zookeeper-3.4.10/zookeeper-3.4.10.tar.gz
SPARKVERSION ?= 2.2.0

build:
		  echo $(URL) > url
		  docker build -t flokkr/zookeeper:$(VERSION) .

deploy:
		  docker push flokkr/zookeeper:$(VERSION)


.PHONY: deploy build
