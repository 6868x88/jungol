import java.util.Scanner;


public class Test1110 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		int num= s.nextInt();
		int num2 = num; //ó�� �Է��� ���� ����
		s.close();
		
		int count=0;
		
		while(true) {
			int t, o ;
			//t:�Է��� ������ ���� �ڸ�, o:�Է��� ������ ���� �ڸ�
			
			
			t = num/10;
			o = num%10;
			
			int result = t + o;
			if(o*10 + result%10 == num2) {
				break;
			}else {
				num = o*10 + result%10;
				count++;
			}
			
		}
		System.out.println(count+1);
	}
}
