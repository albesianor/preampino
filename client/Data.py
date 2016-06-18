#!/usr/bin/python3
# -*- coding: utf-8 -*-

"""
PREAMPino Client
Roberto Albesiano - roberto.albesiano@gmail.com
"""

class Bank():
    
    def __init__(self):
        """
        table: every row represents a single patch -> (title, fuzz, fuzz gain, dist, clip up,
                                                       clip down, dist gain, boost, boost volume,
                                                       vc1 gain, vc2, vc2 gain, vc volume)
        """
        self._data = [ [0 for dummy_1 in range(13)] for dummy in range(200)]
        