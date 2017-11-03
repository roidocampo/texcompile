"""Simple script for compilation of TeX/LaTeX files
"""

from setuptools import setup, find_packages

setup(
    name='texcompile',
    version='0.5',
    description='Simple script for compilation of TeX/LaTeX files',
    url='https://github.com/pypa/sampleproject',

    packages=find_packages(exclude=['docs']),

    entry_points={
        'console_scripts': [
            'texcompile=texcompile:main',
        ],
    },
)
