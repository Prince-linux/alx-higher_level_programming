#!/usr/bin/python3
""" This module returns the peak of the list
"""


def find_peak(list_of_integers):
    if not list_of_integers:
        return None

    left = 0
    right = len(list_of_integers) - 1

    while left < right:
        mid = (left + right) // 2

        # Check if the middle element is greater than its neighbors
        if list_of_integers[mid] > list_of_integers[mid + 1]:
            right = mid
        else:
            left = mid + 1

    # At this point, left and right should be equal, pointing to a peak
    return list_of_integers[left]
