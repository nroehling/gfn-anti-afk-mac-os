#!/bin/bash

# Function to check if GeForce Now is running and send F13 key
send_f13_if_running() {
    if pgrep -x "GeForceNOW" > /dev/null; then
        echo "GeForce Now is running. Switching focus and sending F13 key..."
        
        # Save the currently focused application
        CURRENT_APP=$(osascript -e 'tell application "System Events" to get name of (processes whose frontmost is true)' | head -n1)
        echo "Current application: $CURRENT_APP"

        # Bring GeForce Now to the foreground and wait a moment to ensure focus change
        osascript -e 'tell application "GeForceNOW" to activate'
        sleep 0.1

        # Send F13 key
        osascript -e 'tell application "System Events" to key code 105' 

        # Switch back to the previously focused application
        if [ ! -z "$CURRENT_APP" ]; then
            sleep 0.1
            osascript -e "tell application \"$CURRENT_APP\" to activate"
            echo "Switched back to $CURRENT_APP"
        fi
    else
        echo "GeForce Now is not running."
    fi
}

# Run every 5 minutes
while true; do
    send_f13_if_running
    sleep 500
done
