#!/bin/bash
TAG=docker-meetup-bochum_2017-05
CID=$1
LOCATION="Docker Meetup Bochum 05/2017"
TITLE="Docker Multi Stage Build"
docker exec -ti ${CID} /bin/bash -c "cd print ; ./print.sh /build/docker-multi-stage-build-${TAG}-PeterRossbach.pdf '${LOCATION}'"
docker exec -ti ${CID} /bin/bash -c "cd print ; ./exif.sh /build/docker-multi-stage-build-${TAG}-PeterRossbach.pdf '${TITLE}'"
