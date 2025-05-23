# Minimal stub for hpICsp package used in unit tests

from . import exceptions

class connection:
    def __init__(self, *args, **kwargs):
        pass
    def login(self, *args, **kwargs):
        pass
    def get(self, *args, **kwargs):
        return {}
    def post(self, *args, **kwargs):
        return {}

class servers:
    def __init__(self, *args, **kwargs):
        pass
    def add_server(self, *args, **kwargs):
        pass
    def delete_server(self, *args, **kwargs):
        pass
    def get_server(self, *args, **kwargs):
        return {}

class jobs:
    def __init__(self, *args, **kwargs):
        pass

class common:
    @staticmethod
    def monitor_execution(*args, **kwargs):
        pass

__all__ = ['connection', 'servers', 'jobs', 'common', 'exceptions']
