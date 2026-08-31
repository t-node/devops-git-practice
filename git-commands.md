# Git Commands Reference

## Setup & Config

### `git config`
* **What it does:** Sets configuration options (such as your username and email) for your Git repositories.
* **Example:**
  ```bash
  git config --global user.name "Your Name"
  ```

---

## Basic Workflow

### `git init`
* **What it does:** Initializes a brand new, empty Git repository in the current directory.
* **Example:**
  ```bash
  git init
  ```

### `git add`
* **What it does:** Stages file changes in your working directory to prepare them for a commit.
* **Example:**
  ```bash
  git add index.html
  ```

### `git commit`
* **What it does:** Records and saves your staged snapshot permanently into the repository history with a message.
* **Example:**
  ```bash
  git commit -m "Fix login button styling"
  ```

---

## Viewing Changes

### `git status`
* **What it does:** Displays the current state of your working directory and staging area (modified, staged, or untracked files).
* **Example:**
  ```bash
  git status
  ```

### `git log`
* **What it does:** Shows the chronological commit history of the repository.
* **Example:**
  ```bash
  git log --oneline
  ```



git restore
What it does: Discards uncommitted changes in your working directory.

Example:

Bash
git restore index.html
git reset
What it does: Unstages files or rolls back commits to a previous state.

Example:

Bash
git reset HEAD index.html
"""

updated_content = content + troubleshooting_content

with open("git-commands.md", "w") as f:
f.write(updated_content)

print("Added troubleshooting commands to git-commands.md successfully.")


```text?code_stdout&code_event_index=1
Added troubleshooting commands to git-commands.md successfully.

I have successfully modified your git-commands.md file by adding a brand new Troubleshooting



new addition:


branchingommmands new
