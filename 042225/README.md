# GitOps basics

## Git/Github basics

Git is a version control system that tracks changes to code and lets you save and revisit different versions locally. GitHub is a cloud-based platform that hosts remote Git repositories. Git is a CLI tool. Github is a website, file hosting and SaaS platform for using Git. 

GitOps is a methodology that uses Git repositories as the single source of truth for declarative infrastructure and application configurations. Changes are made by committing to Git, which then triggers automated pipelines to apply and reconcile those changes in the target environments. This ensures versioned, auditable, and reproducible deployments with continuous feedback on drift and compliance.

## CLI File managment

directory is the same thing as folder

- ```pwd``` means present working directory

- ```ls``` means list storage (print contents of directory)

- ```cd``` means change directory

- ```clear``` will empty the terminal of previous commands

```.``` means present directory 

```..``` means the parent directory 

```~ ```means home directory 

Press tab for autocomplete

## Inital Git setup

Set your name for commmit messages and hashes:
```bash
git config --global user.name "Your Name"```

Set your email that you used for your Github account:
```bash
git config --global user.email "your.email@example.com"```

Optional (if you want VS Code to do commit messages): 
```bash
git config --global core.editor "code --wait"```

Optional, but nice, set default branch to main (standard default branch these days):
```bash
git config --global init.defaultBranch main```

## putting files into an existing repo workflow
- ```git add <file name>```
- ```git commit -m "<commit message>"```
- ```git push```


