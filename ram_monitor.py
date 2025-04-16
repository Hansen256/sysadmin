import psutil
import time
import subprocess

THRESHOLD = 80  # Set threshold percentage

def show_alert(usage):
    print(f"High RAM Usage: {usage}% - Check system resources.")
    subprocess.run(["notify-send", f"High RAM Usage: {usage}%", "Check system resources."])

while True:
    usage = psutil.virtual_memory().percent
    if usage > THRESHOLD:
        show_alert(usage)
    time.sleep(5)
