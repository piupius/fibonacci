using System;

public class csharp {
	public static void Main (string[] args) {
		Console.Write("N: ");
		int n = int.Parse(Console.ReadLine());
		int a = 1, b = 0;

		Console.WriteLine(b + "\n" + a);

		for (int i = 0; i <= n; i++) {
			a += b;
			b = a - b;
			Console.WriteLine(a);
		}
	}
}
