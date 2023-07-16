# Git Email Change Script

Easily migrate and update email addresses associated with previous commits.

This repository contains a shell script that changes the email addresses in the commit history of a Git repository. The script allows you to update both the user and author email addresses.

## create a back up

Open a terminal or command prompt and navigate to the repository directory where you want to change the author email.

Create a backup of your repository in case something goes wrong:

```bash
git clone --mirror <repository_url> backup_repo
```

Change into the cloned backup repository directory:

```bash
cd backup_repo
```

## usage

1. Save the above script in a file (e.g., `change_email.sh`)
2. make it executable (`chmod +x change_email.sh`)
3. and run it from the command line with the old and new email parameters:

```bash
./change_email.sh old@example.com new@example.com
```

Make sure you run this script in the root directory of the git repository where you want to change the email addresses in the commit history.

The script updates the local Git configuration and changes all commits with the old email address to the new email address.

## Caveat / Warning

Please note that running git filter-branch can have significant consequences, so it's important to have a backup of your repository before proceeding.

Ensure you understand the implications and consult the README for detailed usage instructions and any additional considerations.

## Contributions and Feedback

Contributions and feedback are welcome! Feel free to fork the repository and submit pull requests with improvements or suggestions.

