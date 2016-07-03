#!/usr/bin/env python
import sys
import os
import subprocess
# import git


def main():
    """
    Copy the files on point which a symlink
    And add this to Github, then del from current dir
    $ python3 add_symlinks_to_github.py

    """

    here = os.getcwd()
    links = []
    filenames = []
    tmp = "{}/tmp".format(here)

    for entry in os.listdir(here):
        if os.path.islink(entry):
            links.append(entry)

    for link in links:
        if not file_exists(link):
            print("target file \"{0}\" does not exist".format(here))
            sys.exit()
        path = os.readlink(link)
        filenames.append(os.path.basename(path))

        subprocess.run(["mkdir", "-p", tmp], stdout=subprocess.PIPE)

        subprocess.run(["mv", link, tmp], stdout=subprocess.PIPE)

        subprocess.run(["cp", path, here], stdout=subprocess.PIPE)

    # gitRepoLocation = os.getcwd()
    # gitRepo = git.Repo.init(gitRepoLocation)
    # gitRepo.index.add([files])
    # gitRepo.index.commit("Adding "+files+ "to repo")

    # Add files from current directories
    for file in filenames:
        subprocess.run(["git", "add", file], stdout=subprocess.PIPE)
        print("The files \"{0}\" successfully added to the repo index ".format(file))
        subprocess.run(["rm", file], stdout=subprocess.PIPE)
        subprocess.run(["mv", "{0}/{1}".format(tmp,file), here], stdout=subprocess.PIPE)

    subprocess.run(["rmdir", tmp], stdout=subprocess.PIPE)


def file_exists(path):
    """
    Return True if path refers to a directory entry that is a symbolic link.
    """
    return os.path.islink(path)


if __name__ == '__main__':
    main()