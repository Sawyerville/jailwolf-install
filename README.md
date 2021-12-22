# jailfox-install

Providing simple shell scripts to accompany [jailfox](https://github.com/ddowse/jailfox)

## Install
```shell
git clone https://github.com/ddowse/jailfox-install
cd jailfox-instal
su 
./install.sh TARGET [ PATH ]
```
`PATH` is the path on your host e.g `/usr/home/foobar/Downloads` that should be
mounted as the download directory for Firefox inside the jail.

## Run
```shell
jailfox
```

## Dependencies
[sudo](https://www.sudo.ws/) 

## Optional
In sudoers (visudo) for example:

```
%wheel ALL=(ALL) NOPASSWD: /usr/local/libexec/jail-firefox-exec
```
