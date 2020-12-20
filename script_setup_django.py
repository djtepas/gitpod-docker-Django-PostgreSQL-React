import os
from subprocess import run

dir_list = ['backend', 'frontend']

def create_dir(dir_list):
    '''
    Creates directories from given list.
    @param: dir_list python list of string directory names.
    '''
    path = os.getcwd()
    for item in dir_list:
        try:
            os.mkdir(os.path.join(path, item))
        except OSError:
            print(f'Creation of the directory {item} failed.')
        else:
            print(f'Successfully created the directory {item}.')

if __name__ == '__main__':
    create_dir(dir_list)
    run("pipenv install django django-cors-headers djangorestframework coverage")
    run("pipenv run django-admin startproject backend .")
