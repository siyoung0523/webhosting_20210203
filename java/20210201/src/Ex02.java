/*
 * 1�̻� 100�̸��� ���� �� ������ 7�� ����� 9�� ����� ����ϴ� ���α׷�
 * �� 7�� ����̸鼭 9�� ����ΰ��� �ѹ��� ���
 */

public class Ex02 {

	public static void main(String[] args) {
		int i = 1;
		while(i<100){
			i++;
			if( i % 7 == 0){
				System.out.println("i = " +i);
				continue;
			}
			if( i % 9 == 0 ){
				System.out.println("i = " +i);
				continue;
			}
		}
	}
}