def to_native(obj):
    if isinstance(obj, bytes):
        return obj.decode()
    return str(obj)
