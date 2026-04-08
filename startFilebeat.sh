filebeatImage="docker.elastic.co/beats/filebeat:8.11.0"

# start filebeat container
sudo docker rm -f filebeat > /dev/null 2>&1

filebeatpath=/home/jacob/wanchain/agent-docker/filebeat
filebeatConfig=$filebeatpath'/config'
filebeatLog=$filebeatpath'/log'
filebeatData=$filebeatpath'/data'

filebeatCmd="sudo docker run -d --name filebeat -u root \
  -v $filebeatConfig/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro \
  -v $filebeatLog:/logs:ro \
  -v $filebeatData:/usr/share/filebeat/data \
  $filebeatImage \
  -e -strict.perms=false"

echo "Starting Filebeat with command: $filebeatCmd"
`$filebeatCmd 1>&2`
# add filebeat end
