# Git Basics

## Git, GitHub, and GitOps Basics

Git is a distributed version control system that tracks changes to code, allowing you to save snapshots (commits), revisit previous versions, and collaborate efficiently. GitHub is a cloud-based platform that hosts Git repositories, providing remote storage, collaboration features (pull requests, issues), and continuous integration services.

GitOps is a methodology that uses Git repositories as the single source of truth for declarative infrastructure and application configurations (for example, Terraform for infrastructure and Kubernetes manifests for applications). Every change is made by committing to Git, which triggers automated pipelines (e.g., CI/CD) to apply and reconcile these changes in target environments. This approach ensures versioned, auditable, and reproducible deployments, with continuous feedback on drift and compliance.

## CLI File Management

A directory is another term for folder. 

- `pwd`: Print the current working directory.
- `ls`: List the contents of the current directory.
- `cd <path>`: Change the current directory to `<path>`.
- `clear`: Clear the terminal screen.
- `.`: Refers to the current directory.
- `..`: Refers to the parent directory.
- `~`: Refers to the home directory.

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

Optional (if you want VS Code to do commit messages): 
```bash
git config --global core.editor "code --wait"
```

Optional, but nice, set default branch to main (standard default branch these days):
```bash
git config --global init.defaultBranch main
```

## Workflow for publishing local edits to an existing Github remote repo
- Track files: `git add <file name>`
- Stage changes: `git commit -m "<commit message>"`
- Publish changes to Github: `git push`

## Workflow for setting up new Github repo and publishing local repo to the remote repo




