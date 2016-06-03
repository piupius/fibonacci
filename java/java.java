import java.util.Scanner;

public class java {
	public static void main (String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.print("N: ");
		int n = input.nextInt();
		int a = 1, b = 0;

		System.out.println(b + "\n" + a);

		for (int i = 0; i <= n; i++) {
			a += b;
			b = a - b;
			System.out.println(a);
		}
	}
}
