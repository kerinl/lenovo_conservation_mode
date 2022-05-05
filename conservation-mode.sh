#!/bin/bash

echo "Enter conservation mode (on = 1, off = 0):"
read MODE
FILE_LOCATION="/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"


# WRITING TO FILE IF SYNTAX CORRECT
if [ "$MODE" -eq "1" ]; then
	sudo echo $MODE > $FILE_LOCATION
elif [ "$MODE" -eq "0" ]; then
	sudo echo $MODE > $FILE_LOCATION
else
  echo "Syntax error!"
fi

# CURRENTLY SET MODE
currentMode=$(cat $FILE_LOCATION)

# OUTPUT
if [ "$MODE" -eq "1" ]; then
	echo "Conservation mode is turned ON!"
elif [ "$MODE" -eq "0" ]; then
	echo "Conservation mode is turned OFF!"
fi
