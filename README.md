gofindssh
===

This tool is part of the learning process of the Go programming language.

It is not made with malicious thoughts, but it's merely a proof of concept of how easy it is to write a bruteforcer.

**Always** edit _/etc/ssh/sshd_config_ to disable root login and password authentication.
If, by any means, your life depends on having password authentication enabled, make sure to use a strong password.

/etc/ssh/sshd_config:
```
PasswordAuthentication no
PermitRootLogin no
# Or, if you need to be able to login as root, use publickey-based authentication
#PermitRootLogin without-password
```

How to get
---
```bash
go get -u github.com/vlad-s/gofindssh
```