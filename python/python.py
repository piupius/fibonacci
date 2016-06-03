from sys import argv

def fibo(count):
	a, b = 1, 0

	print (b)
	print (a)

	for i in range(count):
		a += b
		b = a - b
		print (a)

if __name__ == "__main__":
	fibo(int(argv[1]))