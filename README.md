# jailfox-install

Providing simple shell scripts to accompany [jailfox](https://github.com/ddowse/jailfox)

## Install
```shell
git clone https://github.com/ddowse/jailfox-install
cd jailfox-install
su 
./install.sh TARGET
```

## Run
```shell
jailfox
```

## Dependencies
[sudo](https://www.sudo.ws/) 

## Optional
In sudoers (visudo) for example:

```
%wheel ALL=(ALL) NOPASSWD: /home/user/bin/jail-firefox-exec
```
