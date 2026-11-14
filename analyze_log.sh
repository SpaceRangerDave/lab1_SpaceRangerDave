#!/bin/bash

# creates analyze_log.sh, makes it executable
# grabs the file name from the user, or defaults to transit_session.log
log_file=${1:-transit_session.log}

# if the file is not there, tell the user and stop
if [ ! -f "$log_file" ]; then
    echo "Error: File '$log_file' not found."
    exit 1
fi

echo "Found the file: $log_file"

# count how many times the simulation was run
sessions=$(grep -c "Session" "$log_file")
echo "Total sessions: $sessions"

# counts how many times the car stopped at a zebra
zebras=$(grep -c "zebra" "$log_file")
echo "Zebra stops: $zebras"

# counts how many times the car changed lanes
lane_changes=$(grep -c "lane" "$log_file")
echo "Lane changes: $lane_changes"