#!/usr/bin/env python3
import fileinput
import argparse
import os
import shutil


parser = argparse.ArgumentParser()
parser.add_argument("module", nargs='*', default=None, help="operation options, if necessary")
args = vars(parser.parse_args())

def parse_file(file_name, module_name):
    new_file_name = file_name.replace('___Template___', module_name)
    prew_path = os.getcwd() + "/" + file_name
    new_path = os.getcwd() + "/" + module_name + "/" + new_file_name

    with open(prew_path, 'r', encoding='utf-8') as template_file:
        with open(new_path, 'w', encoding='utf-8') as new_file:
            for line in template_file:
                v = line.replace("___Template___", module_name)
                new_file.write(v)

if not args['module']:
    print("pass module name")
else:
    module_name = args['module'][0]
    if not os.path.exists(module_name):
        os.makedirs(module_name)

    file_list = os.listdir(os.getcwd())
    for swift_file in file_list:
        if swift_file.split(".")[-1] == 'swift':
            parse_file(swift_file, module_name)
        else:
            print("Skip {0}".format(swift_file))


