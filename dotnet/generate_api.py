import os
os.chdir('./Domain')

# This will generate a txt file with code for generating REST API based on objects inside Domain Project

with open('generated_apis.txt', "w") as ffile:
  for filename in os.listdir('.'):
    if filename.endswith('.cs'):
      name = filename.split(".")[0]
      ffile.write(f"dotnet aspnet-codegenerator controller -name {name}Controller -actions -m {name} -dc AppDbContext -outDir ApiControllers -api --useAsyncActions -f\n")
