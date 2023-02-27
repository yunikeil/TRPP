from math import ceil


def f(z, x):
    result = 0
    for i in range(1, min([len(z), len(x)])+1):
        result += 38 * ((abs(11 * z[i-1] ** 2 + z[i-1]**3 + x[ceil(i/2)-1]))**7)
    return 43 * result


print(f([0.42, -0.76, 0.25, -0.78], [-0.33, 0.85, 0.27, -0.77]))
