# Git Basics

## Git, GitHub, and GitOps Basics

Git is a distributed version control system that tracks changes to code, allowing you to save snapshots (commits), revisit previous versions, and collaborate efficiently. GitHub is a cloud-based platform that hosts Git repositories, providing remote storage, collaboration features (pull requests, issues), and continuous integration (pipeline/automation) services.

GitOps is a DevOps methodology that uses Git repositories as the single source of truth for declarative infrastructure and application configurations (for example, Terraform for infrastructure and Kubernetes manifests for applications). Every change is made by committing to Git, which triggers automated pipelines (CI/CD) to apply these changes. This approach ensures versioned, auditable, and reproducible deployments.

## Git tutorial 
[KillerCoda Git tutorial](https://killercoda.com/pawelpiwosz/course/gitFundamentals)

## CLI File Management

A directory is another term for folder. 

- `pwd`: Print the current working directory.
- `ls`: List the contents of the current directory.
- `cd <path>`: Change the current directory to `<path>`.
- `clear`: Clear the terminal screen.
- `.`: Refers to the current directory.
- `..`: Refers to the parent directory.
- `~`: Refers to the home directory.
- `touch <file name>`: Makes a file
- `cat <file name>`: display file contents
- `code .`: open present directory in VS code
- `
- Get to the correct location on your computer 
```cd ~/Documents/TheoWAF/class6.5/GCP```

Tip: Press **Tab** to autocomplete file and directory names.

## Initial Git Setup

Set your name for commit messages and hashes:

```bash
git config --global user.name "Your Name"
```

Set your email that you used for your Github account:
```bash
git config --global user.email "your.email@example.com"
```

**Optional:** Set VS Code as default git editor (to do commit messages, conflicts, etc): 

```bash
git config --global core.editor "code --wait"
```

**Optional:** (nice to use once comfortable) sets default branch to main (standard default branch these days):

```bash
git config --global init.defaultBranch main
```

## Workflow: Publishing Local Edits to an Existing GitHub Remote

Stage your changes:
```bash
git add <file-name>
```

Commit your changes:

```bash
git commit -m "Your descriptive commit message"
```

Push your changes to GitHub:

```bash
git push
```



## Workflow: Setting Up a New GitHub Repository and Publishing Local Files

Navigate to your project directory:

```bash
cd /path/to/your/project
```

Initialize a Git repository (if not already):

```bash
git init
```
 

Stage all your existing files:

```bash
git add .
```
 

Commit your changes:

```bash
git commit -m "Initial commit"
```

Add your remote origin:

```bash
git remote add origin https://github.com/your-username/your-repo.git
```

Rename the default branch to `main`:

```bash
git branch -M main
```

Push your initial commit to GitHub:

```bash
git push -u origin main
```

## Miscellaneous Git Commands

Check the current state of your working directory and staging area:
```bash
git status
```

View the history of commits in the current branch:
```bash
git log
```

