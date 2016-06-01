a, b = 1, 0

print (b)
print (a)

for i in range(10):
	a += b
	b = a - b
	print (a)
