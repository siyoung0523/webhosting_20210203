using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassTest_2.Model
{
    class Customer
    {
        private string name;
        private int age;
        private char gender;
        private string tel;
        private string address;
        

        public Customer(string name, int age, string tel, string address, char gender)
        {
            this.name = name;
            this.age = age;
            this.gender = gender;
            this.tel = tel;
            this.address = address;
            
        }

        public string Name { get => name; set => name = value; }
        public int Age { get => age; set => age = value; }
        public char Gender { get => gender; set => gender = value; }
        public string Tel { get => tel; set => tel = value; }
        public string Address { get => address; set => address = value; }
    
        public void Customerinfo()
        {
            Console.WriteLine("이름: " + name);
            Console.WriteLine("나이: " + age);
            Console.WriteLine("성별: " + gender);
            Console.WriteLine("전화: " + tel);
            Console.WriteLine("주소: " + address);
            Console.WriteLine("-----------");
        }

        public override string ToString() // 변수보단 객체개형태로 이렇게 만들어 쓰기
        {
            string data = "이름: " + name + "\n";
            data += "나이: " + age + "\n";
            data += "성별: " + gender + "\n";
            data += "전화: " + tel + "\n";
            data += "주소: " + address + "\n";
            return data;
        }
    }
}
