#!/bin/sh
GPS_PORT="/dev/ttyUSB1"
LOG_FILE="/tmp/gps_log.txt"
echo "Starting Telemetry Agent on $GPS_PORT..."
cat "$GPS_PORT" | while read -r line; do
    if echo "$line" | grep -q "GPRMC"; then
        VALID=$(echo "$line" | awk -F',' '{print $3}')
        if [ "$VALID" = "A" ]; then
            TIME=$(echo "$line" | awk -F',' '{print $2}')
            LAT=$(echo "$line" | awk -F',' '{print $4}')
            LON=$(echo "$line" | awk -F',' '{print $6}')
            echo "[$TIME] FIX LOCKED: Lat $LAT / Lon $LON"
            echo "$TIME,$LAT,$LON" >> "$LOG_FILE"
        else
            echo -n "."
        fi
    fi
done
