import os
import subprocess
import shlex
os.chdir('./Domain')

for filename in os.listdir('.'):
  if filename.endswith('.cs'):
    subprocess.call(shlex.split(f"dotnet-generate.sh repository {filename.split('.')[0]}"))