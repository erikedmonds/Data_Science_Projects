#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Tue Sep 18 22:33:15 2018

@author: erikedmonds

This module uses Cython to speed up the data processing of the big data files.
"""

from cython.parallel import prange
import cython
import pandas as pd
import kaggle
import zipfile
import re
import os

cdef char *url 
url = "https://data.cityofchicago.org/resource/6zsd-86xi.json"

def data_import(char *dataset):
    kaggle.api.dataset_download_files(dataset)
    zipfile.ZipFile("crimes-in-chicago.zip").extractall()
    os.remove("crimes-in-chicago.zip")
    with os.scandir() as it:
        csv = re.compile("csv")
        files = [entry for entry in it if csv.search(entry.name)
    for i in prange(len(test), nogil=True):
        dataframes.append(files[i])
        dataset = pd.concat(dataframes, join="inner")
    for file_name in files:
        os.remove(file_name)
    return dataset