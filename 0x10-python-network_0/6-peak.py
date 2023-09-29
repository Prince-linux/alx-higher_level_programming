#!/usr/bin/python3
""" This module returns the peak of the list
"""


def find_peak(list_of_integers):
    """This function returns a peak of the list if it exists."""
    if not list_of_integers:
        return None

    left = 0
    right = len(list_of_integers) - 1

    while left < right:
        mid = left + (right - left) // 2

        if list_of_integers[mid] > list_of_integers[mid + 1]:
            right = mid
        else:
            left = mid + 1

    return list_of_integers[left]
