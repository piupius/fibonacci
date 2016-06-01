public class java {
	public static void main (String[] args) {
		int a = 1
		int b = 0;

		System.out.println(b + "\n" + a);

		for (int i = 0; i < 10; i++) {
			a += b;
			b = a - b;
			System.out.println(a);
		}
	}
}