using System;

public class csharp {
	public static void Main (string[] args) {
		int a = 1, b = 0;

		Console.WriteLine(b + "\n" + a);

		for (int i = 0; i < 10; i++) {
			a += b;
			b = a - b;
			Console.WriteLine(a);
		}
	}
}
