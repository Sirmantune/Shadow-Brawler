#!/bin/sh

#
# Copyright © 2015-2021 the original authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -e

DIRNAME=$(cd "$(dirname "$0")" || exit 1; pwd)
GRADLE_USER_HOME="${GRADLE_USER_HOME:-$HOME/.gradle}"
DISTRIBUTION_URL="https://services.gradle.org/distributions/gradle-8.1.1-bin.zip"

# Create gradle home
mkdir -p "$GRADLE_USER_HOME/wrapper/dists"

# Check if gradle is already installed
if [ ! -d "$GRADLE_USER_HOME/wrapper/dists/gradle-8.1.1" ]; then
    echo "Downloading Gradle 8.1.1..."
    cd "$GRADLE_USER_HOME/wrapper/dists"
    wget -q "$DISTRIBUTION_URL" -O gradle-8.1.1-bin.zip || curl -s "$DISTRIBUTION_URL" -o gradle-8.1.1-bin.zip
    unzip -q gradle-8.1.1-bin.zip
    rm gradle-8.1.1-bin.zip
    echo "Gradle downloaded successfully"
fi

# Execute gradle
exec "$GRADLE_USER_HOME/wrapper/dists/gradle-8.1.1/bin/gradle" "$@"
