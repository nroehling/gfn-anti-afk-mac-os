# GeForce NOW Anti-AFK (Shell Script)

A simple shell script that sends an **F13** keypress every 5 minutes to **NVIDIA GeForce NOW** if the application is running. The script continuously checks if GeForce NOW is active and triggers the F13 key press accordingly. It uses AppleScript for that and changes the focus of windows.

Enjoy getting your coffee and not disconnecting from Nvidia GeForceNow!

## Features

- **Automatic GeForce NOW Detection**: Checks if **GeForce NOW** is running every 5 minutes.
- **Send F13 Key**: Sends the **F13** key every 5 minutes if the app is running.

## Requirements

- macOS
- **GeForce NOW** installed and running.
- Bash

## How to Use

1. **Download the Script**:

   - Download the `run.sh` script to your macOS machine.

2. **Make the Script Executable**:

   - Open the **Terminal** app.
   - Navigate to the folder where the script is located.
     ```bash
     cd /path/to/your/script
     ```
   - Make the script executable:
     ```bash
     chmod +x run.sh
     ```

3. **Run the Script**:

   - Execute the script by running:
     ```bash
     ./run.sh
     ```
   - The script will start sending the **F13** key every 5 minutes if **GeForce NOW** is running.

4. **Run the Script in the Background** (optional):
   - To run the script in the background, use:
     ```bash
     nohup ./run.sh &
     ```
   - This will keep the script running even after you close the terminal.

## How It Works

- The script uses a simple **bash loop** that checks if **GeForce NOW** is running every 5 minutes.
- If **GeForce NOW** is detected, it sends the **F13** key using **AppleScript** (via the `osascript` command).
- If **GeForce NOW** is not running, it does nothing until the next check.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Credits

- **Apple Inc.**: For providing AppleScript and `osascript` utilities.
- **NVIDIA**: For **GeForce NOW**, which the script interacts with.

---

For any issues or contributions, feel free to open an issue or submit a pull request 🚀
