from setuptools import setup, find_packages

setup(
    name='apiverve_airportdistance',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Airport Distance calculates the great-circle distance between two airports, plus estimated travel time, using their 3-letter IATA codes. It provides route distance in miles and kilometers plus estimated flight duration.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/airportdistance?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
