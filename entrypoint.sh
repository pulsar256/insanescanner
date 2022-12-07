#!/bin/bash

scanimage -d $DEVICE --format=jpeg -p -o /data/scan_$(date +"%Y-%m-%d_%H:%M:%S").jpg