#!/bin/sh
if [ ! -d sonar-runner-2.4 ]; then
	wget http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/2.4/sonar-runner-dist-2.4.zip
	unzip sonar-runner-dist-2.4.zip
fi
cd ..
PATH=$PATH:_analysis/sonar-runner-2.4/bin/
sonar-runner