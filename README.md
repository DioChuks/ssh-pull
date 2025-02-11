# ssh-pull

A simple bash script to set up SSH keys, verify the SSH connection with GitHub (or any other service), and pull the latest changes from a Git repository branch.

## Features
- Starts the `ssh-agent` and adds the specified SSH private key.
- Verifies the SSH connection with GitHub (or any other service).
- Allows pulling changes from a specific Git branch.

## Prerequisites
- You must have **SSH keys** set up for your GitHub account (or other Git services).
- Make sure **Git** is installed on your system.

## Usage

1. Clone this repository or download the script to your local machine:

    ```bash
    git clone https://github.com/DioChuks/ssh-pull.git
    cd ssh-pull
    ```

2. Make the script executable:

    ```bash
    chmod +x start_ssh_pull.sh
    ```

3. Run the script:

    ```bash
    ./start_ssh_pull.sh
    ```

4. Follow the prompts:
    - Enter the name of your SSH private key (default is `id_ed25519`).
    - Enter the path to the directory where your Git repository is located.
    - Enter the Git branch you want to pull from (default is `main`).

## Example

```bash
$ ./start_ssh_pull.sh
Running the ssh-agent
Enter SSH PRIVATE KEY NAME (default is id_ed25519): 
Adding the ssh private key: id_ed25519
Verifying GitHub connection
Hi username! You've successfully authenticated, but GitHub does not provide shell access.
Finding the directory!
Enter directory path: /path/to/your/repo
Switching to directory and pulling changes from GitHub
######################################################
Enter branch (default is main): main
Pulling changes from origin main
```

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
