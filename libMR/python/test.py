#!/usr/bin/env python
# Copyright 2011 Securics, Inc
# Author: Chris Eberle <ceberle@securics.com>
#
# Test libweibull functionality

# Note: This only currently works if you 'make install' libweibull

import sys
import random

try:
    import pyweibull
except ImportError:
    sys.path.append('.libs')
    import pyweibullw as pyweibull

print '*' * 80
pyweibull.printWeibullBuildInfo()
print '*' * 80

