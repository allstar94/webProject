package test;

public class Example_try_catch {

	public static void main(String[] args) {
		int num1 = 10, num2 = 0;
		double array[] = new double[10];
		try {
			array[11] = num1/num2;
		}catch(ArithmeticException e) {
			System.out.println("0���� �������� �ϸ� �ȵ˴ϴ�.");
			System.out.println("���� ���� : " + e.toString());
		}catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("�迭�� ���̸� ������ϴ�.");
			System.out.println("���� ���� :" + e.toString());
		}finally {
			System.out.println("����� �ݵ�� �����ؾ��ϴ� �κ��Դϴ�.");
		}
		
	}

}
