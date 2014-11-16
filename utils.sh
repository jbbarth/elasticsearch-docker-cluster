#display a main step
step() {
  echo -ne $'\e[32m* '; echo $*; echo -ne $'\e[0m'
}

#open a URL in the browser depending on what's available
open_url() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    sleep 0.1; open "$1" #the "sleep" avoids weird errors in OSX Yosemite
  elif which firefox >/dev/null; then
    firefox "$1"
  elif which google-chrome >/dev/null; then
    google-chrome "$1"
  else
    echo "Unable to find a way to open URL $1 :(" >&2
  fi
}

#spawn a docker ES node
spawn_es_node() {
  node_name=$1
  node_type=$2
  port_9200=$3
  port_9300=$4
  docker run -d \
    --name $node_name \
    --publish $port_9200:9200 \
    --publish $port_9300:9300 \
    $(whoami)/elasticsearch-full \
    /elasticsearch/bin/elasticsearch -Xms64m -Xmx64m -Des.config=/elasticsearch/config/elasticsearch-$node_type.yml
}
