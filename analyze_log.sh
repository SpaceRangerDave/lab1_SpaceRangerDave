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

# counts how many times the simulation was run (matches the exact text in the log)
sessions=$(grep -c "New session started" "$log_file")
echo "Total sessions: $sessions"

# counts how many times the car stopped at a zebra
zebras=$(grep -c "Zebra crossing!" "$log_file")
echo "Zebra stops: $zebras"

# counts how many times the car changed lanes
lane_changes=$(grep -c "Changing lane" "$log_file")
echo "Lane changes: $lane_changes"

# gets the driver name from the last run, splits by colon, and trims spaces
driver=$(grep "Driver" "$log_file" | tail -n 1 | awk -F' : ' '{print $2}')
echo "Latest trip: $driver"

# gets the top speed from the last run, splits by colon, and trims spaces
top_speed=$(grep "Top speed" "$log_file" | tail -n 1 | awk -F' : ' '{print $2}')
echo "Top speed: $top_speed"