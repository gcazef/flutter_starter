#!/usr/bin/env python3

import os
import re


FLUTTER_UPGRADE_CMD = 'flutter upgrade'
FLUTTER_CREATE_CMD = 'flutter create'
FLUTTER_PUB_ADD_CMD = 'flutter pub add'
FLUTTER_PUB_ADD_DEV_CMD = 'flutter pub add -d'


DEPENDENCIES = [

]
DEV_DEPENDENCIES = [

]


def prompt_project_name():
    name_regex = '^[a-zA-Z_\-]*$'

    while True:
        project_name = input('> ')
        match = re.fullmatch(name_regex, project_name)
        
        if match is None:
            print('😱 Invalid project name')
            continue

        return project_name


def copy_template_files():
    #TODO: perform copy
    # TODO: rename package:template in package:project_name
    pass


def install_packages():
    cwd = os.path.realpath(os.getcwd())
    project_path = f'{cwd}/{project_name}'

    os.chdir(project_path)
    for dep in DEPENDENCIES:
        os.system(f'{FLUTTER_PUB_ADD_CMD} {dep}')
    for dep in DEV_DEPENDENCIES:
        os.system(f'{FLUTTER_PUB_ADD_DEV_CMD} {dep}')
    os.chdir(cwd)


if __name__ == '__main__':
    print('Welcome, let\'s create your Flutter project!\n')

    print('🤔 What is the name of your project?\n')
    project_name = prompt_project_name()

    print('\n📈 Running `flutter upgrade`...')
    os.system(FLUTTER_UPGRADE_CMD)

    print(f'\n🚀 Running flutter create {project_name}...')
    os.system(f'{FLUTTER_CREATE_CMD} {project_name}')

    print('\n📈 Installing packages...')
    install_packages()

    print('\n📂 Copying files from template...')
    copy_template_files()

    print('\n😎 Project successfully created!')
