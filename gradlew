#!/bin/sh
# Use system gradle if wrapper jar missing
WRAPPER_JAR="$(dirname "$0")/gradle/wrapper/gradle-wrapper.jar"
if [ -f "$WRAPPER_JAR" ]; then
    exec java -jar "$WRAPPER_JAR" "$@"
else
    exec gradle "$@"
fi
