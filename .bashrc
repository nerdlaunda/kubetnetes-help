'''bash
# # # # # # # # # # # # # #
#  Custom alias for k8s   #
#          BEGIN          #
# # # # # # # # # # # # # #
alias k='kubectl'
do="--dry-run=client -o yaml"

# get 
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kgpa='kubectl get pods -A'
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
function kcpy() {
    kubectl run $@ -o yaml --dry-run=client 
}
function kcdy() {
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

# edit
alias ke='kubectl edit'

# scale
function kscale() { 
    kubectl scale deployment $1 --replicas=$2 
}

# update image
function ksetim() {
    kubectl set image deployment $@
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
function ksh() { 
    kubectl exec -ti $@ -- sh;
 }
function kbash() { 
    kubectl exec -ti $@ -- bash;
 }

# info
alias kcinfo='kubectl cluster info'

# # # # # # # # # # # # # #
#  Custom alias for k8s   #
#           END           #
# # # # # # # # # # # # # #
'''