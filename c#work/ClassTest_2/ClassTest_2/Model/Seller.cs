using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassTest_2.Model
{
    class Seller
    {
        private string name;
        private string tel;
        private string jikwi;
        private string office;

        public Seller(string name, string tel, string jikwi, string office) // 생성자 생성
        {
            this.name = name;
            this.tel = tel;
            this.jikwi = jikwi;
            this.office = office;
        }

        public string Name { get => name; set => name = value; }
        public string Tel { get => tel; set => tel = value; }
        public string Jikwi { get => jikwi; set => jikwi = value; }
        public string Office { get => office; set => office = value; }
    
        public void Sellerinfo()
        {
            Console.WriteLine("이름: " + name);
            Console.WriteLine("전화: " + tel);
            Console.WriteLine("직위: " + jikwi);
            Console.WriteLine("사무실: " + office);
            Console.WriteLine("-----------");

        }

        public override string ToString()
        {
            String data = "이름 :" + name + "\n";
            data += "전화: " + tel + "\n";
            data += "직급: " + jikwi + "\n";
            data += "사무실: " + office + "\n";

            return data;
        }
    }
}
