# Elasticsearch Docker Cluster

This repository aims at providing a docker-based Elasticsearch cluster for local
tests. It includes many monitoring or browsing plugins so that you can test them
easily.


## Usage

First you need to have a working docker environment on the machine you work on.

After that, you should clone this repository and use the script directly.

To launch the cluster:

    ./bootstrap

To stop and cleanup containers:

    ./cleanup


## Plugins

List of installed plugins:
- https://github.com/mobz/elasticsearch-head (monitoring and management)
- https://github.com/karmi/elasticsearch-paramedic (monitoring)
- https://github.com/lmenezes/elasticsearch-kopf (monitoring and management)
- https://github.com/lukas-vlcek/bigdesk (monitoring)
- https://github.com/xyu/elasticsearch-whatson/0.1.3 (monitoring and introspection)
- https://github.com/royrusso/elasticsearch-HQ (monitoring and management)
- https://github.com/polyfractal/elasticsearch-segmentspy (lucene segments monitoring)
- https://github.com/andrewvc/elastic-hammer (rich browser)
- https://github.com/polyfractal/elasticsearch-inquisitor (rich browser)


## Resources

Elasticsearch configuration and topology are copied from Botify simplified architecture,
detailed by @fdv [here](https://t37.net/my-epic-elasticsearch-bug-and-how-i-fucked-up-my-investigation-not-focusing-wide-enough.html)
and [here](https://github.com/elasticsearch/elasticsearch/issues/8057).

Plugin ideas are taken from the following sources:
- http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/modules-plugins.html
- https://blog.codecentric.de/en/2014/03/elasticsearch-monitoring-and-management-plugins/


## Contributing

Contributions are welcome :
* by giving feed back on what is cool, what should be improved
* by reporting bugs : you can open issues directly on github
* by forking it and sending pull request if you have a patch or a new feature you want to implement
