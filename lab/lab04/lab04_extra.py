""" Lab 04 Optional Questions """

from lab04 import *


this_file = __file__

def hailstone(n):
    """Print out the hailstone sequence starting at n, and return the
    number of elements in the sequence.

    >>> a = hailstone(10)
    10
    5
    16
    8
    4
    2
    1
    >>> a
    7
    >>> # Do not use while/for loops!
    >>> from construct_check import check
    >>> check(this_file, 'hailstone',
    ...       ['While', 'For'])
    True
    """

    """
    def helper(n, steps)
        print(n)
        if n == 1:
            return steps
        elif n%2 == 0:
            return helper(n/2,steps+1)
        else:
            return helper(n*3+1, steps+1)
    return helper(n, 1)
    """
    print(int(n))
    if n == 1:
        return 1
    elif n%2 == 0:
        return hailstone(n/2)+1
    else:
        return hailstone(n*3+1)+1
