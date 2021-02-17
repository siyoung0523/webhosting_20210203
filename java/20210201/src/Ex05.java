
public class Ex05 
/*110p question 5-1
{
 public static void main(String[] args) {
	int num = 120;
	if((num>0)&&(num%2 == 0)){
		System.out.println("양수이면서 짝수");
	}
}
}
*/

/*112p question 5-2
{
	public static void main(String[] args) {
		int num1 = 50;
		int num2 = 100;
		
		if(num1 > num2){
			System.out.println("큰 수: " +num1);
			System.out.println("작은 수: " +num2);
		}
		
		else{
			System.out.println("큰 수: " +num2);
			System.out.println("작은 수: " +num1);
		}
	}
}
*/

/* 118p question5-3-1
{
	public static void main(String[] args) {
		int n = 3;
		
		if(n==1){
			System.out.println("Simple Java");
		}
		
		else if(n==2){
			System.out.println("Funny Java");
		}
		
		else if(n==3){
			System.out.println("Fantastic Java");
		}
		
		else{
			System.out.println("The best programming language");
		}
		
		System.out.println("Do you like Java");
	}
}
*/

/* 118p question 5-3-2
{
	public static void main(String[] args) {
		int n = 24;

		switch(n/10){
		
		case 0:
			System.out.println("0이상 10미만의 수");
			break;
		
		case 1:
			System.out.println("10이상 20미만의 수");
			break;
		case 2:
			System.out.println("20이상 30미만의 수");
			break;
		}
	}
}
*/

/* 122p question 5-4-1
{
	public static void main(String[] args) {
		int i = 0;
		int sum = 0;
		
		while(i<100){
			i++;
			sum += i;
		}
	System.out.println("sum = " +sum);
			
	}
}
*/

/* 122p question 5-4-2
{
	public static void main(String[] args) {
		int i = 0;
		//while을 사용한 1 ~ 100출력
		while(i<101){
			System.out.println(+i);
			i++;
		}
		
		//do while을 사용한 1 ~ 100 출력
		do{
			i++;
			System.out.println(+i);
		
		}while(i<100);
			
		}
	}
*/

/*122p 5-4-3
{
	public static void main(String[] args) {
		int i = 0, sum = 0;
		while(i<1000){
			i++;
			if((i%2==0)&&(i%7==0)){
				System.out.println("2의 배수이며 7의 배수인 수"+i);
			}
			sum +=i;
			}
		System.out.println("모든 합 :" +sum);
	}
	}
*/

/* 125p question 5-5-1
{
	public static void main(String[] args) {
		int i = 0;
		int total = 1;
		for(i=1;i<11;i++){
			 total *=i;
		}
		System.out.println("모든 수의 곱 : " +total);
	}
}
*/

/* 125p question 5-5-2
{
	public static void main(String[] args) {
		int num = 0;
		for(num=1;num<10;num++){
			System.out.println("5*"+num+"=" +num*5);
		}
	}
}
*/

/* 129p question 5-6-1
{
	public static void main(String[] args) {
		int num = 0;
		int count = 0;
		
		for(num=0;num<100;num++){
			if(((num % 5) != 0) || ((num % 7) != 0))
				continue;
			count++;
			System.out.println(num);
		}
		System.out.println("count: "+count);

		}
	}
*/
{
	public static void main(String[] args) {
		
	}
}