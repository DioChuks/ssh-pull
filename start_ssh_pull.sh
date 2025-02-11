#!/bin/bash

# Run the ssh-agent
echo "Running the ssh-agent"
eval "$(ssh-agent -s)"

# add the ssh private key with ssh-add
key="id_ed25519"
read -p "Enter SSH PRIVATE KEY NAME (default is $key): " input_key
key="${input_key:-$key}"  # If the input is empty, use the default value
echo "Adding the ssh private key: $key"
ssh-add ~/.ssh/$key

# verify connection with github or any other service
echo "Verifying GitHub connection"
ssh -vT git@github.com

# Go to directory and pull changes
echo "Finding the directory!"
read -p "Enter directory path: " path
echo "Switching to directory and pulling changes from GitHub"
echo "######################################################"
branch="main"
read -p "Enter branch (default is main): " input_branch
branch="${input_branch:-$branch}"  # If the input is empty, use the default value
echo "Pulling changes from origin $branch"
cd "$path" && git pull origin "$branch"
