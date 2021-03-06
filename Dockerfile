# Copyright (c) 2017-2018 Software AG, Darmstadt, Germany and/or its licensors
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this 
# file except in compliance with the License. You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software distributed under the
# License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, 
# either express or implied. 
# See the License for the specific language governing permissions and limitations under the License.
#
# $Date: 2015-07-15 15:53:16 +0100 (Wed, 15 Jul 2015) $
# $Revision: 259596 $
#
# This DockerFile creates a Docker image derived off of a UM-enabled Apama image, with EPL code for receiving/sending events over UM

ARG APAMA_IMAGE=apama_um_enabled
FROM melaniemonnereau/correlator-base-image:latest
MAINTAINER SoftwareAG

COPY --chown=sagadmin:sagadmin common.mon sender.mon um-connectivity.yaml init-sender.yaml ${APAMA_WORK}/UMSample/

WORKDIR ${APAMA_WORK}/UMSample/
