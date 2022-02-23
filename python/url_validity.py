'''
Write a python program to check if an URL is valid 
or not using regex
'''

import re

pattern = r"^(https|http)(://www.?)+[a-zA-Z0-9]+.+[a-zA-Z0-9]+"

def urlIsValid(url):
    pattern = r"^(https|http)(://www.?)+[a-zA-Z0-9]+.+[a-zA-Z0-9]+"

