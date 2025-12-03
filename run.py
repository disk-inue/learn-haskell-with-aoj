import subprocess
import sys

def run(file):
    print(f"Running: {file}")
    subprocess.run(["python3", file])

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python run.py day01_two_sum.py")
    else:
        run(sys.argv[1])
