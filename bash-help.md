## Alias

These are some useful aliases to speed up the process.
#### Installation
There are 2 ways to add these in terminal. 
- Copy and append it to the ~/.bashrc file.
- Use curl and get raw content from [HERE](https://raw.githubusercontent.com/nerdlaunda/kubetnetes-help/main/.bashrc) and append it to `~/.bashrc`.
```
curl https://raw.githubusercontent.com/nerdlaunda/kubetnetes-help/main/.bashrc >> $HOME/.bashrc
source $HOME/.bashrc
```

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