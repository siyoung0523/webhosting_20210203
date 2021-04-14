using ClasssTest_2;
using ClassTest_2.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassTest_2.View
{
    class Menu
    {
        //하드코딩을 안하기 위해 숫자마다 이름 지정
        //class 변수는 class 안에 딱 박혀있기 때문에 
        //다른 곳에서 Menu.MENU_MAIN_RAND 이런식으로 불러 올 수 있음
        public const int MENU_MAIN_RAND = 1;
        public const int MENU_MAIN_DEL_ALL = 2;
        public const int MENU_MAIN_VIEW = 3;
        public const int MENU_MAIN_ADD = 4;
        public const int MENU_MAIN_DEL = 5;
        public const int MENU_MAIN_UPDATE = 6;
        public const int MENU_MAIN_EXIT = 7;

        //instance 메소드는 새로운 메소드가 생겨서 
        //다른 곳에서 불러올때 객체 생성 [Menu menu = new Menu();]를 해주고
        //menu.mainMenu()를 해줘야함.
        public int mainMenu() // public void MainMenu()가 아닌 void를 int로 바꿈. why? return값이 int 이므로.
        {
            Console.WriteLine("----------------");
            Console.WriteLine("고객차량관리 앱 v1.0");
            Console.WriteLine("----------------");
            Console.WriteLine("1. 랜덤데이터 생성");
            Console.WriteLine("2. 모든 데이터 삭제");
            Console.WriteLine("3. 데이터 보기");
            Console.WriteLine("4. 데이터 추가");
            Console.WriteLine("5. 데이터 삭제");
            Console.WriteLine("6. 데이터 수정");
            Console.WriteLine("7. 앱종료");
            Console.WriteLine("----------------");
            Console.WriteLine("Main Menu 선택:");

            return Convert.ToInt32(Console.ReadLine());
        }

        public int getRandSize()
        {
            Console.WriteLine("----------------");
            Console.WriteLine("랜덤 데이터 개수 설정");
            Console.WriteLine("----------------");
            Console.WriteLine("개수 입력:");
            return Convert.ToInt32(Console.ReadLine());
        }

        //한 메소드에서 여러 값을 반환하기위한 두가지 방법이 있음
        
        public string[] addCarMenu() //배열을 사용한 메소드
        {
            // 일반적인 return은 하나의 값을 반환하는데,
            // 4개의 값을 반환하기 위해서 배열사용
            string[] data = new string[4]; 
            Console.WriteLine("----------------");
            Console.WriteLine("Car 데이터 추가");
            Console.WriteLine("----------------");
            Console.WriteLine("1. 차종");
            data[0] = Console.ReadLine();
            Console.WriteLine("2. 색상");
            data[1] = Console.ReadLine();
            Console.WriteLine("3. 제조사");
            data[2] = Console.ReadLine();
            Console.WriteLine("4. 가격");
            data[3] = Console.ReadLine();

            return data; //배열을 반환 
        }

        public Car addCarMenu2() //class를 사용한 메소드
        {

            Console.WriteLine("----------------");
            Console.WriteLine("Car 데이터 추가");
            Console.WriteLine("----------------");
            Console.WriteLine("1. 차종");
            string model = Console.ReadLine();
            Console.WriteLine("2. 색상");
            string color = Console.ReadLine();
            Console.WriteLine("3. 제조사");
            string company = Console.ReadLine();
            Console.WriteLine("4. 가격");
            string price = Console.ReadLine();

            return new Car(model, color, company, price); 
        }

        public string delCarMenu() //data(모델명)를 던져줘야 해서 string으로 함
        {

            Console.WriteLine("----------------");
            Console.WriteLine("Car 데이터 추가");
            Console.WriteLine("----------------");
            Console.WriteLine("삭제할 차량 모델을 입력");

            return Console.ReadLine(); //삭제할 모델 명을 입력받음
        }


        public string[] updateCarMenu() //data(모델명)를 던져줘야 해서 string으로 함
        {
            string[] model = new string[2]; //배열 정보를 넘겨주기 위함
            Console.WriteLine("----------------");
            Console.WriteLine("Car 데이터 수정");
            Console.WriteLine("----------------");
            Console.WriteLine("검색할 차량 모델을 입력");
            model[0] = Console.ReadLine();
            Console.WriteLine("변경할 차량 모델을 입력");
            model[1] = Console.ReadLine();
            return model; //데이터 전체 이동은 비효율 적이기에 위치만 주는 포인터개념
        }


        public Customer addCustMenu() //class를 사용한 메소드
        {

            Console.WriteLine("----------------");
            Console.WriteLine("고객 데이터 추가");
            Console.WriteLine("----------------");
            Console.WriteLine("1. 이름");
            string name = Console.ReadLine();
            Console.WriteLine("2. 나이");
            int age = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("3. 전화");
            string phone = Console.ReadLine();
            Console.WriteLine("4. 주소");
            string addr = Console.ReadLine();
            Console.WriteLine("5. 성별");
            char gender = Convert.ToChar(Console.ReadLine());

            return new Customer(name, age, phone, addr, gender);
        }

        public string delCustMenu() //data(모델명)를 던져줘야 해서 string으로 함
        {

            Console.WriteLine("----------------");
            Console.WriteLine("고객 데이터 추가");
            Console.WriteLine("----------------");
            Console.WriteLine("삭제할 고객 이름을 입력");

            return Console.ReadLine(); //삭제할 모델 명을 입력받음
        }


        public string[] updateCustMenu() //data(모델명)를 던져줘야 해서 string으로 함
        {
            string[] name = new string[2]; //배열 정보를 넘겨주기 위함
            Console.WriteLine("----------------");
            Console.WriteLine("고객 데이터 수정");
            Console.WriteLine("----------------");
            Console.WriteLine("검색할 차량 고객을 입력");
            name[0] = Console.ReadLine();
            Console.WriteLine("변경할 차량 고객을 입력");
            name[1] = Console.ReadLine();
            return name; //데이터 전체 이동은 비효율 적이기에 위치만 주는 포인터개념
        }



            public Seller addSellMenu() //class를 사용한 메소드
            {

                Console.WriteLine("----------------");
                Console.WriteLine("판매자 데이터 추가");
                Console.WriteLine("----------------");
                Console.WriteLine("1. 이름");
                string name = Console.ReadLine();
                Console.WriteLine("2. 전화");
                string tel = Console.ReadLine();
                Console.WriteLine("3. 직위");
                string jikwi = Console.ReadLine();
                Console.WriteLine("4. 사무실");
                string office = Console.ReadLine();


                return new Seller(name, tel, jikwi, office);
            }

            public string delSellMenu() //data(모델명)를 던져줘야 해서 string으로 함
            {

                Console.WriteLine("----------------");
                Console.WriteLine("판매자 데이터 추가");
                Console.WriteLine("----------------");
                Console.WriteLine("삭제할 판매자 이름을 입력");

                return Console.ReadLine(); //삭제할 모델 명을 입력받음
            }


            public string[] updateSellMenu() //data(모델명)를 던져줘야 해서 string으로 함
            {
                string[] name = new string[2]; //배열 정보를 넘겨주기 위함
                Console.WriteLine("----------------");
                Console.WriteLine("판매자 데이터 수정");
                Console.WriteLine("----------------");
                Console.WriteLine("검색할 차량 판매자를 입력");
                name[0] = Console.ReadLine();
                Console.WriteLine("변경할 차량 판매자를 입력");
                name[1] = Console.ReadLine();
                return name; //데이터 전체 이동은 비효율 적이기에 위치만 주는 포인터개념
            }

        public int subAddMenu()
        {
            Console.WriteLine("----------------");
            Console.WriteLine("데이터 추가 선택");
            Console.WriteLine("----------------");
            Console.WriteLine("1. 차량 정보 추가 :");
            Console.WriteLine("2. 고객 정보 추가 :");
            Console.WriteLine("3. 판매자 정보 추가");
            Console.WriteLine("4. 종료");
            Console.WriteLine("----------------");

            return Convert.ToInt32(Console.ReadLine());

        }

        public void subDelMenu()
        {

        }

        public void subUpdateMenu()
        {

        }
    }
}
