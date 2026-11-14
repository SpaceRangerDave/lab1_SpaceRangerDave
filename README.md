# Lab 1: FSD Simulation - ALU to Kigali Convention Centre

A Python and Bash simulation of a self-driving car navigating the roads of Kigali from ALU Rwanda to the Kigali Convention Centre. 

## Files in this project
- `road_simulation.py` - The main logic. Contains all 10 required functions for checking signs, adjusting speed, and summarising the journey.
- `engine.py` - The simulation engine (provided, not modified).
- `transit_program.py` - The web interface runner (provided, not modified).
- `index.html` - The visual page (provided, not modified).
- `analyze_log.sh` - A Bash script that reads `transit_session.log` and prints a summary of the drive.
- `.gitignore` - Keeps log files and `__pycache__` out of GitHub.

## How to run the simulation
1. Open a terminal in this folder.
2. Run the Python script:
    python3 road_simulation.py
3. Enter your driver name.
4. Choose option `5` to start driving.
5. Copy the link provided in the terminal (e.g., `http://127.0.0.1:8008`) and open it in your browser.
6. Go back to the terminal and press **Enter** to start the car.

## How to run the Log Analyzer
After you've completed a drive, a `transit_session.log` file is generated. To analyze it, run:
    bash analyze_log.sh

This will print:
- Total sessions run
- Number of zebra stops
- Number of lane changes
- The driver name and top speed of the most recent trip