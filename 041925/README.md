# How to use LB load tester script

## Directions

1) in the GCP console (or Bash/ZSH on linux/MacOS or Git Bash on windows if you want) open the cloud shell (press G then S. This provisions a temporary VM. 

2) run this command (its one single command): 
```curl -sSL https://raw.githubusercontent.com/aaron-dm-mcdonald/class6.5-notes/refs/heads/main/041925/load-1.sh -o load-1.sh && chmod +x load-1.sh && ./load-1.sh```

3) It will ask for your load balancer's IP address. It will also prompt you for "region changes"; 5 is a good value.

4) Note: you need a startup script that includes the VM metadata for this to work properly. 

## How it works

It creates requests for the load balancer using curl. It parses the zone metadata and saves the region. When the region changes it saves the change and outputs it. 
