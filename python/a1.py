import random, time
a = 0
b = 0
c = 0
for i in range(1000):
    time.sleep(0.01)
    erm = random.choice(['lefu','hkbu','dihh'])
    if erm == 'lefu':
        a += 1
        print("LF: ", a)
    elif erm == 'hkbu':
        b += 1
        print("BU: ", b)
    else:
        c += 1
        print("DH: ", c)