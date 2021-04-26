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
    class SellController : BaseController
    {



        List<Seller> listSel;

        internal List<Seller> ListSel { get => listSel; set => listSel = value; }

        public SellController(RandData rand) // CarController 객체 생성되어질때 외부에서 RandData rand 가져옴
        {
            this.rand = rand;
            listItem = new List<object>();
            listSel = listItem.Cast<Seller>().ToList();
        }

        public override void insRandData(int count) // int count 갯수만큼 정보가 나옴.
        {
            for (int i = 0; i < count; i++)
            {
                listSel.Add(new Seller(rand.getName(),
                                 rand.getTel(),
                                 rand.getJikwi(),
                                 rand.getOffice()));
            }
        }

        public override void itemView()
        {
            for (int i = 0; i < listSel.Count; i++)
            {
                Console.WriteLine("번호: " + (i + 1));
                Console.WriteLine(listSel[i].ToString());     // list[i].printInfoCar(); 이 둘 중 아무거나 쓰면 됨.
            }
        }

        public override void removeAll()
        {
            if (listSel.Count == 0)
            {
                Console.WriteLine("판매자 데이터존재x");
                return;
            }
            listSel.Clear();
        }

        public override void addItem(object item)
        {
            listSel.Add(item as Seller);
        }

        public override void delItem(string item)//차량의 모델명으로 삭제하기 위함
        {
            for (int i = 0; i < listSel.Count; i++)
            {
                if (listSel[i].Name.Equals(item))
                {
                    listSel.RemoveAt(i--); // 두 개가 연속되는 경우 리스트가 당겨져 오류발생 하기에 --로 해결.
                }
            }
        }

        public override void updateItem(string[] item)//옛날 정보를 받아 새로운 정보 업데이트
                                                      //두개 값을 동시에 받아 리턴 못하므로 배열로 사용
        {
            for (int i = 0; i < listSel.Count; i++)
            {
                if (listSel[i].Name.Equals(item[CommMenu.OLD_MODEL]))
                {
                    listSel[i].Name = item[CommMenu.NEW_MODEL];
                }
            }
        }
    }
}
