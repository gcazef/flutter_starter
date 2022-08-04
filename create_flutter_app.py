#!/usr/bin/env python3

import os
import re


FLUTTER_UPGRADE_CMD = 'flutter upgrade'
FLUTTER_CREATE_CMD = 'flutter create'
FLUTTER_PUB_UPGRADE_CMD = 'flutter pub upgrade'


def prompt_project_name():
    name_regex = '^[a-zA-Z_\-]*$'

    while 1:
        project_name = input('> ')
        match = re.fullmatch(name_regex, project_name)
        
        if match is None:
            print('😱 Invalid project name')
            continue

        return project_name


def upgrade_packages():
    cwd = os.path.realpath(os.getcwd())
    project_path = f'{cwd}/{project_name}'

    os.chdir(project_path)
    os.system(FLUTTER_PUB_UPGRADE_CMD)
    os.chdir(cwd)


if __name__ == '__main__':
    print('Welcome, let\'s create your Flutter project!\n')

    print('🤔 What is the name of your project?\n')
    project_name = prompt_project_name()

    print('\n📈 Running `flutter upgrade`...')
    os.system(FLUTTER_UPGRADE_CMD)

    print(f'\n🚀 Running flutter create {project_name}...')
    os.system(f'{FLUTTER_CREATE_CMD} {project_name}')

    print('\n📂 Copying files from template...')
    # TODO: copy files from template

    print('\n📈 Upgrading pub packages...')
    upgrade_packages()

    print('\n😎 Project successfully created!')
