# jailwolf-install

Providing simple shell scripts to accompany [jailwolf](https://github.com/sawyerville/jailwolf)

## Install
```shell
git clone https://github.com/sawyerville/jailwolf-install
cd jailwolf-install
su 
./install.sh TARGET [ PATH ]
```
`PATH` is the path on your host e.g `/usr/home/foobar/Downloads` that should be
mounted as the download directory for Librewolf inside the jail.

## Run
```shell
jailwolf
```

## Dependencies
[doas](https://www.sudo.ws/) or [sudo](https://www.sudo.ws/) 

## Optional
In sudoers (visudo) for example:

```
%wheel ALL=(ALL) NOPASSWD: /usr/local/libexec/jail-librewolf-exec
```
