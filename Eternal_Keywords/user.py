import os

def create_dir(folderName1):
    os.mkdir('C://python//Excel//'+folderName1)

def create_subdir(folderName2):
    os.mkdir("C://python//Excel//"+str(folderName2))

def concatinate(first,last):
    fullname=first+" "+last
    return fullname
