#!/bin/bash

set -e

# Start DNSDIST
exec supervisord -n
