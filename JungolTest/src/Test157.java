import java.util.Scanner;

public class Test157 {

   public static void main(String[] args) {
      Scanner sc = new Scanner(System.in);
      int arr[] = new int[100];
      int count = 0;
      int sum = 0;
      for(int i=0; i<arr.length; i++) {
    	  arr[i] = sc.nextInt();
    	  
    	  if(arr[i] % 5 == 0 && arr[i] !=0) {
    		  count++;
    		  sum += arr[i];
    	  } 
    	  if(arr[i] == 0) {
    		  break;
    	  }
      }
      
      System.out.println("Multiples of 5 : "+count);
      System.out.println("sum : "+sum);
      System.out.printf("avg : %.1f",(double)sum/count);
      
      sc.close();
   }
}