package test;

public class Example_try_catch {

	public static void main(String[] args) {
		int num1 = 10, num2 = 0;
		double array[] = new double[10];
		try {
			array[11] = num1/num2;
		}catch(ArithmeticException e) {
			System.out.println("0으로 나눗셈을 하면 안됩니다.");
			System.out.println("에러 내용 : " + e.toString());
		}catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("배열의 길이를 벗어났습니다.");
			System.out.println("에러 내용 :" + e.toString());
		}finally {
			System.out.println("여기는 반드시 실행해야하는 부분입니다.");
		}
		
	}

}
