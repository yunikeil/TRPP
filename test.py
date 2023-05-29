


class TestClass:
    abc = 123


a = TestClass
b = TestClass

a.abc = 345

print(a.abc)
print(b.abc)


