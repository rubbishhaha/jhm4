import random
for i in range(int(input("number:"))):
    print(f"('S00{i}','CHAN','{random.choice(["M","F"])}','{random.randint(2000,2025)}-0{random.randint(1,9)}-{random.randint(10,28)}','{random.randint(1,6)}{random.choice(["A","B","C","D"])}'),")