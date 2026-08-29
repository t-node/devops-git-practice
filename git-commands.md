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
