## Alias

These are some useful aliases to speed up the process.
#### Installation
There are 2 ways to add these in terminal. 
- Copy from [HERE](https://raw.githubusercontent.com/nerdlaunda/kubetnetes-helper/main/.bashrc) and append it to the ~/.bashrc file.
- Use curl and get raw content from [HERE](https://raw.githubusercontent.com/nerdlaunda/kubetnetes-helper/main/.bashrc) and append it to `~/.bashrc`.

```bash
curl https://raw.githubusercontent.com/nerdlaunda/kubetnetes-helper/main/.bashrc >> $HOME/.bashrc
source $HOME/.bashrc
```

ALIAS|Command|Description|Example
-----|-------|-----------|-------
`k`|`kubectl`|Base kubectl|`k get pod`
`kg`|`kubectl get`|Short for kubectl get |`kg deployment`
`kgp`|`kubectl get pods`|Get pods from default namespace|`kgp`
`kgpa`|`kubectl get pods -A`|Get pods from all namespace|`kgpa`
`kgpn`|`kubectl get pods -n`|Get pods from specified namespace|`kgpn <my-namespace>`
`kgpwa`|`kubectl get pod -o wide -A`|Get pods from default namespace with additional information|`kgpwa`
`kgpwn`|`kubectl get pod -o wide -n`|Get pods from speeecified namespace with additional information|`kgpwn <my-nameespace>`

## Vi/Vim

Set tabs to 2 space, its helpful when editing yaml.
```bash
set tabstop=2
set expandtab
set shiftwidth=2
```
Above can be added by appending the code to the .vimrc file
Same can be achieved by running below command in terminal.
```bash
echo "set tabstop=2" >> $HOME/.vimrc
echo "set expandtab" >> $HOME/.vimrc
echo "set shiftwidth=2" >> $HOME/.vimrc
```

---
# todo
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
