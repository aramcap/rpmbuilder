#!/usr/bin/env bash
#
# RPMBuilder (rpmbuilder)
# Copyright (C) 2019 aramcap (https://github.com/aramcap/rpmbuilder)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
# 
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
# Not modify this software! It's can be produce corruption!
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

set -e

CONTAINER_NAME=rpmbuilder
DOCKERDIR=$(dirname $0)

echo -e "\nRPMBuilder - Copyright (GNU GPL v3) 2019 https://github.com/aramcap/rpmbuilder\n\n"

if [ ! -d "./SPECS" ]; then
  echo "ERROR: It needs rpmbuild folder structure"
  exit 1
fi

docker build -t ${CONTAINER_NAME} -f $DOCKERDIR/Dockerfile .
docker run -d --name ${CONTAINER_NAME} -t ${CONTAINER_NAME}
docker cp ${CONTAINER_NAME}:/root/rpmbuild/RPMS/ ./RPMS/
docker kill $CONTAINER_NAME
docker rm $CONTAINER_NAME
docker rmi $CONTAINER_NAME
exit 0
