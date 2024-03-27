#!/usr/bin/env python3
"""
   Create python code that insert a new document
   in a collection based on kwargs
"""


def insert_school(mongo_collection, **kwargs):
    """
    This funtion insert new document in collection
    based on kwargs
    """
    inserted_doc = mongo_collection.insert(kwargs)
    return inserted_doc
