#!/usr/bin/env python
# coding: utf-8

# This data Structure utlizes a List Comprehension


'''This List Comprehension multplies a number wihtin the range, 
1 through 20, by itself 3 times. It then returns the result'''

Cube = [i**3 for i in range(1, 20)]
    
print(Cube)
        


# This data structure is a Set Comprehension



"""This Set Comprehension is used to return all Zip Codes"""

class Address:
    
    def __init__(address, house_number, street, city, zip_code):
        address.house_number = house_number
        address.street = street
        address.city = city
        address.zip_code = zip_code


Addresses = [ Address(515, "Stranton Avenue","Herald", 51654), 
           Address(986, "Diamond Street", "Jameson", 85616), 
           Address(654, "Syndey Road", "Tupper", 12032) ]

all_zip_codes = { address.zip_code for address in Addresses }

print(all_zip_codes)






