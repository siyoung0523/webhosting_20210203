using CustCar0415.Model;
using CustCar0415.Utill;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CustCar0415.Control
{
    class CustController
    {
        const int OLD_MODEL = 0;
        const int NEW_MODEL = 1; //클래스 변수

        List<Customer> listCust = new List<Customer>();
        RandData rand; //인스턴트 변수

        public CustController(RandData rand) // CustController 객체 생성되어질때 외부에서 RandData rand 가져옴
        {
            this.rand = rand;
        }

        public void InsRandDate_cus(int count) // int count 갯수만큼 정보가 나옴.
        {

            for (int i = 0; i < count; i++)
            {
                listCust.Add(new Customer(rand.getName(), rand.getAge(), rand.getTel(), rand.getAddr(), rand.getGender()));
            }
        }


        public void custView()
        {
            for (int i = 0; i < listCust.Count; i++)
            {
                Console.WriteLine("번호: " + (i + 1));
                Console.WriteLine(listCust[i].ToString());     // list[i].Customerinfo(); 이 둘 중 아무거나 쓰면 됨.
            }
        }

        public void custView2()
        {
            for (int i = 0; i < listCust.Count; i++)
            {
                Console.WriteLine("번호: " + (i + 1));
                listCust[i].Customerinfo();     // list[i].Customerinfo(); 이 둘 중 아무거나 쓰면 됨.
            }
        }

        public void removeAll()
        {
            if (listCust.Count == 0)
            {
                Console.WriteLine("고객 데이터존재x");
                return;
            }
            listCust.Clear();
        }

        public void addCustItem(Customer cust)
        {
            listCust.Add(cust);
        }

        public void delCustItem(string name)//고객의 이름명으로 삭제하기 위함
        {
            for (int i = 0; i < listCust.Count; i++)
            {
                if (listCust[i].Name.Equals(name))
                {
                    listCust.RemoveAt(i--); // 두 개가 연속되는 경우 리스트가 당겨져 오류발생 하기에 --로 해결.
                }
            }
        }


        public void updateCarItem(string[] name) //옛날 정보를 받아 새로운 정보 업데이트
                                                 //두개 값을 동시에 받아 리턴 못하므로 배열로 사용
        {
            for (int i = 0; i < listCust.Count; i++)
            {
                if (listCust[i].Name.Equals(name[OLD_MODEL]))
                {
                    listCust[i].Name = name[NEW_MODEL];
                }
            }
        }



    }
}
