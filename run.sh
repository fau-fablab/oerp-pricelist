#!/bin/bash
# cleanup output
find output/ -name "*.html" -delete
# create pricelists
PYTHONIOENCODING=UTF-8 ./oerp-pricelist.py

