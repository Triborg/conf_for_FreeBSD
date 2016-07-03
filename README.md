### Configuration files for web server on FreeBSD in Gigabyte D525TUD

Current directory contains symlinks

Run Python script add_symlinks_to_github.py for add to Github repo the files which links points to, contains in current directory.

But before:
```sh
$ git init
$ git config --global user.name [YOUR NAME]
$ git config --global user.email [YOUR EMAIL ADDRESS]
```


And after:
```sh
$ git commit -m "add files"
$ git remote add origin https://github.com/[YOUR_USERNAME]/[YOUR_FORK].git
$ git push -u origin master
```
