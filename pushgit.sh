#!/bin/bash

GIT=`which git`
${GIT} add --all .
${GIT} commit -m "Test Commit"
${GIT} push
