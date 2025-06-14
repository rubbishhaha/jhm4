import random, time
a = 0
b = 0
for i in range(1000):
    time.sleep(0.01)
    if random.choice(['lefu','hkbu']) == 'lefu':
        a += 1
        print("LF: ", a)
    else:
        b += 1
        print("BU: ", b)
