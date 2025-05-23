from . import moves

__all__ = ['moves', 'iteritems', 'string_types']

def iteritems(d):
    return d.items()

string_types = (str,)
