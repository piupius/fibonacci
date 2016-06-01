from sys import argv


def fib(count):
	fst, snd = 1, 0
	print(snd)
	if count >= 1:
		if count == 1:
			print(fst)
		else:
			for i in range(count):
				fst, snd = snd, fst
				fst += snd
				print(fst)

if __name__ == "__main__":
	count = int(argv[1])
	fib(count)
