## Alias

These are some useful aliases to speed up the process.

```bash
alias k=kubectl
# get 
alias kg=kubectl get
alias kgp=kubectl get pods
alias kgpa=kubectl get pods -A
alias kgpn=kubectl get pods -n
alias kgd=kubectl get deployment
alias kgda=kubectl get deployment -A
alias kgdn=kubectl get deployment -n
alias kgpp=kubectl get pv,pvc
alias kgppa=kubectl get pv,pvc -A
alias kgppn=kubectl get pv,pvc -n
alias kgs=kubectl get svc
alias kgsa=kubectl get svc -A
alias kgsn=kubectl get svc -n
# get yaml & dryrun
function kgpy() { kubectl get pod $@ -o yaml }
function kgdy() { kubectl get deployment $@ -o yaml }

# describe
alias kd=kubectl describe
alias kdp=kubectl describe pods
alias kdpn=kubectl describe pods -n
alias kdd=kubectl describe deployment
alias kddn=kubectl describe deployment -n
alias kds=kubectl describe svc
alias kdsn=kubectl describe svc -n

#deletetion
alias krm=kubectl delete
alias krmf=kubectl delete --force
alias krmp=kubectl delete pod
alias krmd=kubectl delete deployment
alias krmpf=kubectl delete --force pod 
alias krmdf=kubectl delete --force deployment  


```

## Vi/Vim

## Templates:
### Pod
#### Imperative

#### Declarative

### Deployment
#### Imperative

#### Declarative

### Service
#### Imperative

#### Declarative