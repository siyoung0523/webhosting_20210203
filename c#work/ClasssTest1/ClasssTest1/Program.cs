using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClasssTest1
{
    class Program
    {
        static void Main(string[] args)
        {
            const int MAIN_MENU_INSERT = 1;
            const int MAIN_MENU_VIEW = 2;
            const int MAIN_MENU_EXIT = 3;

            //new Car().Color = "검정";
            //Car car = new Car("K8", "은색", "기아", "5천만원");
            //car.Model = "그랜저2020";
            //car.printInfoCar();
            //Console.WriteLine("영업소 : " + Car.JIJUM);


            //Car car2 = new Car();
            //car2.Model = "그랜저";
            //car2.printInfoCar();
            //Console.WriteLine("영업소 : " + Car.JIJUM);

            //Console.WriteLine(new Car("G80", "검정", "현대", "7천만원").ToString());

            Random r = new Random();
            string[] name = { "홍길동", "김길동", "박길동", "최길동", "이길동" };
            int[] age = { 30, 40, 50, 60, 100 };
            char[] gender = { '남', '여' };
            string[] tel = { "010-1111-1111", "010-2222-2222", "010-3333-3333", "010-4444-4444", "010-5555-5555" };
            string[] addr = { "서울 동구 신천2동", "대구 동구 신천2동", " 대구 중구 동인동3가", " 대구 중구 삼덕동3가", "부산 동구 신천3동" };


            Student[] st = new Student[10];
            List<Student> list = new List<Student>(); //리스트는 크기 유동적

            //for(int i = 0; i < st.Length; i++)
            //{
            //    st[i] = new Student(name[r.Next(5)], age[r.Next(5)], gender[r.Next(2)], tel[r.Next(5)], addr[r.Next(5)]);
            //    st[i].studentInfo();

            //}

            /*Student[] st1 = new Student[5]; //배열은 크기 고정
            List<Student> list = new List<Student>(); //리스트는 크기 유동적
            /for (int i = 0; i < 5; i++)
            /{
            /    //Console.WriteLine(st[i]);
            /    st1[i] = new Student(name[r.Next(5)], age[r.Next(5)], gender[r.Next(2)], tel[r.Next(5)], addr[r.Next(5)]);
            /    list[i] = new Student(name[r.Next(5)], age[r.Next(5)], gender[r.Next(2)], tel[r.Next(5)], addr[r.Next(5)]);
            /    st1[i].studentInfo();
            /    list[i].studentInfo();
            /    Environment.Exit(0); 콘솔프로그램 종료
            }
            */
            while (true)
            {
                switch (menuMain())
                {
                    case MAIN_MENU_INSERT:
                        createRandDate(st, name, age, gender, tel, addr, r); //객체형성
                        break;
                    case MAIN_MENU_VIEW:
                        if (st != null)
                        {
                            dataView(st);
                        }
                        break;
                    case MAIN_MENU_EXIT:
                        Environment.Exit(0); // 3번 일 때 종료
                        break;
                }
            }
        }
        public static int menuMain() // 메뉴만 관리하는 메소드
        {
            Console.WriteLine("-----------------------");
            Console.WriteLine("학생 관리 프로그램 v1.0");
            Console.WriteLine("-----------------------");
            Console.WriteLine("1. 학생정보 생성");
            Console.WriteLine("2. 학생정보 출력");
            Console.WriteLine("3. 종료");
            Console.WriteLine("-----------------------");

            Console.Write("메뉴 선택 : ");
            int menu = Convert.ToInt32(Console.ReadLine()); //입력 받는 것
            return menu;

        }

        public static void createRandDate(Student[] st, string[] name, int[] age, char[] gender, string[] tel, string[] addr, Random r)
        {
            for (int i = 0; i < st.Length; i++)
            {
                st[i] = new Student(name[r.Next(5)], age[r.Next(5)], gender[r.Next(2)], tel[r.Next(5)], addr[r.Next(5)]);
            }
        }

        public static void dataView(Student[] s)
        {
            try
            {
                for (int i = 0; i < s.Length; i++)
                {
                    s[i].studentInfo();
                }
            }
            catch (NullReferenceException e)
            {
                Console.WriteLine("생성된 데이터가 없습니다.");
                Console.WriteLine(e.Message);
            }
        }

        public static void dataView2(Student[] s)
        {
            for (int i = 0; i < s.Length; i++)
            {
                s[i].studentInfo();
            }
        }



    }
}
