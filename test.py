from contextlib import contextmanager



@contextmanager
def teeemp(var):
    print(1)
    yield var
    print(2)

with teeemp(1.5) as iamge:
    print(iamge)