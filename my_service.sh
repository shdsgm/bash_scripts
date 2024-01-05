#!/bin/bash

# Function to get the PID of the my_service.sh process
get_my_service_pid() {
    pid=$(pgrep -f my_service.sh)
    echo "$pid"
}

# Function to start the service
start_service() {
    echo "Service started"
    sleep 9999
}

# Function to stop the service
stop_service() {
    pid=$(get_my_service_pid)
    if [ -n "$pid" ]; then
        echo "Stopping service..."
        kill "$pid"
        echo "Service stopped"
    else
        echo "Service is not running"
    fi
}

# Function to restart the service
restart_service() {
    stop_service
    start_service
}

# Process the command
case "$1" in
    start)
        start_service
        ;;
    stop)
        stop_service
        ;;
    restart)
        restart_service
        ;;
    *)
        echo "Usage: $0 <start|stop|restart>"
        exit 1
        ;;
esac

exit 0
