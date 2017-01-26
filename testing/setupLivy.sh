#!/bin/bash
#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


set -xe

if [[ "$#" -ne 1 ]]; then
    echo "usage) $0 [livy version]"
    echo "   eg) $0 0.2.0"
    exit 1
fi

LIVY_VERSION="${1}"
./testing/downloadLivy.sh $LIVY_VERSION
export LIVY_HOME=`pwd`/livy-server-$LIVY_VER
export SPARK_HOME=`pwd`/spark-$SPARK_VER-bin-hadoop$HADOOP_VER

set +xe
