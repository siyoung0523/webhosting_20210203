using ClassTest_2.Model;
using ClassTest_2.Utill;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassTest_2.Controll
{
    class SellController
    {

        const int OLD_MODEL = 0;
        const int NEW_MODEL = 1; //클래스 변수

        List<Seller> listSel = new List<Seller>();
        RandData rand; //인스턴트 변수

        public SellController(RandData rand) // CarController 객체 생성되어질때 외부에서 RandData rand 가져옴
        {
            this.rand = rand;
        }

        public void InsRandDate_sell(int count) // int count 갯수만큼 정보가 나옴.
        {

            for (int i = 0; i < count; i++)
            {
                listSel.Add(new Seller(rand.getName(),
                                 rand.getTel(),
                                 rand.getJikwi(),
                                 rand.getOffice()));
            }
        }

        public void SellView()
        {
            for (int i = 0; i < listSel.Count; i++)
            {
                Console.WriteLine("번호: " + (i + 1));
                Console.WriteLine(listSel[i].ToString());     // list[i].printInfoCar(); 이 둘 중 아무거나 쓰면 됨.
            }
        }

        public void SellView2()
        {
            for (int i = 0; i < listSel.Count; i++)
            {
                Console.WriteLine("번호: " + (i + 1));
                listSel[i].Sellerinfo();     // list[i].printInfoCar(); 이 둘 중 아무거나 쓰면 됨.
            }
        }

        public void removeAll()
        {
            if (listSel.Count == 0)
            {
                Console.WriteLine("판매자 데이터존재x");
                return;
            }
            listSel.Clear();
        }

        public void addSellItem(Seller seller)
        {
            listSel.Add(seller);
        }

        public void delSellItem(string name)//차량의 모델명으로 삭제하기 위함
        {
            for (int i = 0; i < listSel.Count; i++)
            {
                if (listSel[i].Name.Equals(name))
                {
                    listSel.RemoveAt(i--); // 두 개가 연속되는 경우 리스트가 당겨져 오류발생 하기에 --로 해결.
                }
            }
        }


        public void updateSellItem(string[] name) //옛날 정보를 받아 새로운 정보 업데이트
                                                  //두개 값을 동시에 받아 리턴 못하므로 배열로 사용
        {
            for (int i = 0; i < listSel.Count; i++)
            {
                if (listSel[i].Name.Equals(name[OLD_MODEL]))
                {
                    listSel[i].Name = name[NEW_MODEL];
                }
            }
        }


    }
}
