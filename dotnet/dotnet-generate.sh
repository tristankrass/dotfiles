#!/bin/bash

# Replace where your repositories are
cd /Users/<path_to_repo>/Contracts.DAL.App/Repositories

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi

if [ "$1" == "repository" ]; then
  echo "using Contracts.DAL.Base.Repositories;
using Domain;
namespace Contracts.DAL.App
{
    public interface I$2Repository : IBaseRepository<$2>
    {
    }
}" >> I$2Repository.cs

# Replace where your repositories are
cd /Users/<path_to_repo>/DAL.App.EF/Repositories

echo "using Contracts.DAL.App;
using DAL.Base.EF;
using Domain;
using Microsoft.EntityFrameworkCore;

namespace DAL.Base.Repositories
{
    public class $2Repository : BaseRepository<$2>, I$2Repository
    {
        public $2Repository(DbContext dbContext) : base(dbContext)
        {
            
        }
    }
}
" >> $2Repository.cs

else
  echo "not a repository"
  exit 1
fi
