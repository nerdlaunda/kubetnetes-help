
#CUSTOM-ALIAS-BEGIN-K8S
alias k='kubectl'
complete -F __start_kubectl k

source <(kubectl completion bash)
do="--dry-run=client -o yaml"

# get 
alias kg='kubectl get'
alias kgp='kubectl get pods'
kgpw(){
    kubectl get pod $@ -o wide
}

alias kgpn='kubectl get pods -n'
alias kgpwa='kubectl get pod -o wide -A'
alias kgpwn='kubectl get pod -o wide -n'

alias kgd='kubectl get deployment'
alias kgda='kubectl get deployment -A'
alias kgdn='kubectl get deployment -n'
alias kgdwa='kubectl get deployment -o wide -A'
alias kgpwn='kubectl get deployment -o wide -n'

alias kgpp='kubectl get pv,pvc'
alias kgppa='kubectl get pv,pvc -A'
alias kgppn='kubectl get pv,pvc -n'
alias kgs='kubectl get svc'
alias kgsa='kubectl get svc -A'
alias kgsn='kubectl get svc -n'
alias kgn='kubectl get nodes'
alias kgnw='kubectl get nodes -o wide'


# get yaml & dryrun
# krpy <name> <image> <ns>
krpy() {
    kubectl run $1 --image=$2 -n $3 -o yaml --dry-run=client 
}
# kcdy <deployment_name> <image_name> <ns> <replicas>
kcdy() {
    kubectl create deployment $@ -o yaml --dry-run=client
}

# describe
alias kd='kubectl describe'
alias kdp='kubectl describe pods'
alias kdpn='kubectl describe pods -n'
alias kdd='kubectl describe deployment'
alias kddn='kubectl describe deployment -n'
alias kds='kubectl describe svc'
alias kdsn='kubectl describe svc -n'
alias kdn='kubectl get node'

# edit
alias ke='kubectl edit'

# scale
kscale() { 
    kubectl scale deployment $1 --replicas=$2 -n $3
}


# apply
alias kaf='kubectl apply -f'

# deletetion
alias krm='kubectl delete'
alias krmf='kubectl delete -f'
alias krmfo='kubectl delete --force'
alias krmp='kubectl delete pod'
alias krmd='kubectl delete deployment'
alias krmpfo='kubectl delete --force pod'
alias krmdfo='kubectl delete --force deployment'

# get bash/sh
kcsh() { 
    kubectl exec -ti $@ -- sh;
 }
kcbash() { 
    kubectl exec -ti $@ -- bash;
 }

# info
alias kcinfo='kubectl cluster info'

kcurltest(){
    kubectl run curltest --rm --image=curlimages/curl -n $@-- sh
}

#CUSTOM-ALIAS-END-K8S
