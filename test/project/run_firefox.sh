#!/usr/bin/env bash

set -xe

ksversion=$1
apiKey=$2

docker run -t --rm -v "$(pwd)":/katalon/katalon/source katalonstudio/katalon:$ksversion katalon-execute.sh -browserType="Firefox" -retry=0 -statusDelay=15 -testSuitePath="Test Suites/TS_RegressionTest" -apiKey=${apiKey}