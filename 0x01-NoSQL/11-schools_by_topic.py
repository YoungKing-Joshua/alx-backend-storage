#!/usr/bin/env python3
"""
    Create codde that return list of school
    having a specific topic.
"""


def schools_by_topic(mongo_collection, topic):
    """
       function returns the list of school having a specific topic.
    """
    docs = mongo_collection.find({"topics": topic})
    return list(docs)
