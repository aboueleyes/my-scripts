#!/usr/bin/env python3
'''converts files to pdf, usually i use this to convert pptx files to pdf'''

import argparse
import os
import pathlib

parser = argparse.ArgumentParser()
parser.add_argument('-i', '--input', nargs='*')

args = parser.parse_args()

for file in args.input:
    file_path = pathlib.Path(file)
    print(f'input: {file_path.absolute()}')

    command = f'libreoffice --headless --invisible --convert-to pdf  "{file_path}" --outdir "{file_path.parent.absolute()}"'
    os.system(command)
