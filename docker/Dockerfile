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

FROM centos:centos7

RUN yum install -y rpm-build

RUN mkdir /root/rpmbuild 
WORKDIR /root/rpmbuild
RUN mkdir -p {BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}

COPY ./BUILD/ BUILD/
COPY ./BUILDROOT/ BUILDROOT/
COPY ./SOURCES/ SOURCES/
COPY ./SPECS/ SPECS/

# Deletes MACOS files
RUN find . -name "*.DS_Store" -delete

RUN rpmbuild -ba SPECS/file.spec

CMD ["/bin/sh"]