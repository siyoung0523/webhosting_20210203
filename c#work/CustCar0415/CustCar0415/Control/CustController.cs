using CustCar0415.Common;
using CustCar0415.Model;
using CustCar0415.Utill;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CustCar0415.Control
{
    class CustController : BaseController
    {
        List<Customer> listCust; //부모로 부터 상속받음

        internal List<Customer> ListCust { get => listCust; set => listCust = value; }

        public CustController(RandData rand) // CustController 객체 생성되어질때 외부에서 RandData rand 가져옴
        {
            this.rand = rand;
            listItem = new List<object>(); // 객체 생성
            listCust = listItem.Cast<Customer>().ToList();
        }

       

        public override void insRandData(int count) // int count 갯수만큼 정보가 나옴.
        {
            for (int i = 0; i < count; i++)
            {
                listCust.Add(new Customer(rand.getName(), rand.getAge(), rand.getTel(), rand.getAddr(), rand.getGender()));
            }
        }

        public override void itemView()
        {
            for (int i = 0; i < listCust.Count; i++)
            {
                Console.WriteLine("번호: " + (i + 1));
                Console.WriteLine(listCust[i].ToString());     // list[i].Customerinfo(); 이 둘 중 아무거나 쓰면 됨.
            }
        }

        public override void removeAll()
        {
            if (listCust.Count == 0)
            {
                Console.WriteLine("고객 데이터존재x");
                return;
            }
            listCust.Clear();
        }

        public override void addItem(object item)
        {
            listCust.Add(item as Customer);

        }

        public override void delItem(string item)
        {
            for (int i = 0; i < listCust.Count; i++)
            {
                if (listCust[i].Name.Equals(item))
                {
                    listCust.RemoveAt(i--); // 두 개가 연속되는 경우 리스트가 당겨져 오류발생 하기에 --로 해결.
                }
            }
        }

        public override void updateItem(string[] item)
        {
            for (int i = 0; i < listCust.Count; i++)
            {
                if (listCust[i].Name.Equals(item[CommMenu.OLD_MODEL]))
                {
                    listCust[i].Name = item[CommMenu.NEW_MODEL];
                }
            }
        }
    }
}
