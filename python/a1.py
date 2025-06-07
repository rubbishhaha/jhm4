import random, time
a = 0
b = 0
for i in range(100):
    time.sleep(0.1)
    if random.choice(['lefu','hkbu']) == 'lefu':
        a += 1
        print("a: ", a)
    else:
        b += 1
        print("b: ", b)
