step() { echo -ne $'\e[32m* '; echo $*; echo -ne $'\e[0m'; }
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
