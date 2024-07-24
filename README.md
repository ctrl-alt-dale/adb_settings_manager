# ADB Settings Manager

## Overview

ADB Settings Manager is a command-line tool designed for managing Android device settings using ADB (Android Debug Bridge). It allows users to list, search, set, delete, backup, restore, export, and import settings on connected Android devices.

## Features

- **List All Defined Keys**: Display all defined settings from System, Secure, and Global namespaces.
- **Search for a Key**: Find a specific key in the settings.
- **Set a Specific Key**: Modify or set the value of a specific key.
- **Delete a Specific Key**: Remove a specific key from the settings.
- **Backup Settings**: Create a backup of all defined settings.
- **Restore Settings**: Restore settings from a backup file.
- **Export Settings**: Export specific settings to a file.
- **Import Settings**: Import specific settings from a file.
- **Disconnect and Exit**: Disconnect from the device and exit the tool.

## Requirements

- **Windows Operating System**: This script is designed to run on Windows only.
- **ADB (Android Debug Bridge)**: Ensure ADB is installed and accessible from the command line.
- **Connected Android Device**: A device must be connected and recognized by ADB.

## Installation

1. **Download ADB**: If not already installed, download ADB from [Android SDK Platform-Tools](https://developer.android.com/studio/releases/platform-tools).
2. **Add ADB to PATH**: Add the ADB binary to your system's PATH environment variable.
3. **Clone the Repository**:
   ```sh
   git clone https://github.com/ctrl-alt-dale/adb-settings-manager.git
