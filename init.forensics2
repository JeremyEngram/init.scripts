#!/bin/bash

spooler_output="/path/to/spooler/output.log"

echo 'Debian Forensics Environment - essential components (metapackage)' | tee -a "$spooler_output"
sudo apt install -y forensics-all >> "$spooler_output" 2>&1

echo 'Debian Forensics Environment - GUI components (metapackage)' | tee -a "$spooler_output"
sudo apt install -y forensics-all-gui >> "$spooler_output" 2>&1

echo 'Show differences between files using color graphics' | tee -a "$spooler_output"
sudo apt install -y forensics-colorize >> "$spooler_output" 2>&1

echo 'Forensics Environment - extra console components (metapackage)' | tee -a "$spooler_output"
sudo apt install -y forensics-extra >> "$spooler_output" 2>&1

echo 'Forensics Environment - extra GUI components (metapackage)' | tee -a "$spooler_output"
sudo apt install -y forensics-extra-gui >> "$spooler_output" 2>&1

echo 'Full forensics station (metapackage)' | tee -a "$spooler_output"
sudo apt install -y forensics-full >> "$spooler_output" 2>&1
