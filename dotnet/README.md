## How to use it

1. Make a bin folder where you will place the shell script (optional)
`–mkdir ~/bin`

2. Add `dotnet-generate.sh` to `bin` folder.

3. Make the script executable `chmod +x dotnet-generate.sh`

4. Make the script executable `chmod +x dotnet-generate.sh`

5. Make the script executable from anywhere on your computer
`export PATH=$PATH:<your_path_to_bin_folder>`

6. Place the `generate_repo.py` to the root of solution folder.

6.1 Make sure that you have Project called `Contracts.DAL.App` and directory `Repositories` inside the project.

6.1.1 To create a project just run `dotnet new classlib --framework netstandard2.1 --output Contracts.DAL.App`

6.2 Make sure that you have Project called `DAL.App.EF` and directory `Repositories` inside the project.
6.1.1 To create a project just run `dotnet new classlib --framework netstandard2.1 --output DAL.App.EF`

7. Run the `generate_repo.py` by `python3 generate_repo.py`.