"""
The AWS Maintenance Window Reporter
"""
from os import path
from setuptools import find_packages, setup

dependencies = ['boto3', 'datadog', 'boto3-stubs[rds]']

this_directory = path.abspath(path.dirname(__file__))
with open(path.join(this_directory, 'README.md'), encoding='utf-8') as f:
    long_description = f.read()

setup(
    name='aws-maintenance-window-reporter',
    version="0.2.8",
    url='https://github.com/binxio/aws-maintenance-window-reporter',
    license='BSD',
    author='Mathijs van Mourick',
    author_email='mathijsvanmourick@binx.io',
    description='Reports AWS maintenance windows',
    long_description=long_description,
    long_description_content_type='text/markdown',
    package_dir={'': 'src'},
    packages=find_packages(where='src'),
    include_package_data=True,
    zip_safe=False,
    platforms='any',
    install_requires=dependencies,
    setup_requires=[],
    tests_require=dependencies + ['pytest', 'botostubs', 'pytest-runner'],
    test_suite='tests',
    entry_points={
        'console_scripts': [
            'aws-maintenance-windows = aws_maintenance_window_reporter.__main__:main'
        ],
    },
    classifiers=[
        # As from http://pypi.python.org/pypi?%3Aaction=list_classifiers
        # 'Development Status :: 1 - Planning',
        # 'Development Status :: 2 - Pre-Alpha',
        # 'Development Status :: 3 - Alpha',
        'Development Status :: 4 - Beta',
        # 'Development Status :: 5 - Production/Stable',
        # 'Development Status :: 6 - Mature',
        # 'Development Status :: 7 - Inactive',
        'Environment :: Console',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: BSD License',
        'Operating System :: POSIX',
        'Operating System :: MacOS',
        'Operating System :: Unix',
        'Operating System :: Microsoft :: Windows',
        'Programming Language :: Python',
        'Programming Language :: Python :: 3',
        'Topic :: Software Development :: Libraries :: Python Modules',
    ]
)
