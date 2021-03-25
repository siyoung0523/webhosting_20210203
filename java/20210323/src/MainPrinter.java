interface Printable{
	public void print(String doc);
//	public void printA(String doc);
	default public void printCMYK(String doc){
		System.out.println("new defalut Printer...");
		System.out.println(doc);
	}
}
interface ColorPrintable extends Printable{ //interface간 상속은 extends로 상속함.
	void printCMYK(String doc);
}
class VUpSPrinter implements ColorPrintable{
	@Override
	public void print(String doc){
		System.out.println("old SansungPrinter...");
		System.out.println(doc);
	}

	@Override
	public void printCMYK(String doc) {
		System.out.println("new SansungPrinter...");
		System.out.println(doc);
	}
}
class SPrinter implements Printable{
	
	@Override
	public void print(String doc){
		System.out.println("samsung Printer...");
		System.out.println(doc);
	}
}

class LPrinter implements Printable{
	public void print(String doc){
		System.out.println("LG Printer...");
		System.out.println(doc);	
	}
}

public class MainPrinter {
	public static void main(String[] args) {
		SPrinter sp = new SPrinter();
		
		
		sp.print("this is report,,,");
		System.out.println();
		LPrinter lp = new LPrinter();
		lp.print("this is report,,,");
		
		System.out.println();
		Printable ap = (doc)->{
			System.out.println("만들면서 정의 되는 함수");
			System.out.println("doc="+doc);
		};
		ap.print("this is report...");
	
		VUpSPrinter bsp = new VUpSPrinter();
		bsp.print("this is report...");
		bsp.printCMYK("this is report...");
	}
}
