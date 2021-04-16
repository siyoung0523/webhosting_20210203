using CustCar0415.Model;
using CustCar0415.Utill;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CustCar0415.Control
{
    class CarContoller
    {
        const int OLD_MODEL = 0;
        const int NEW_MODEL = 1; //클래스 변수

        List<Car> listCar = new List<Car>();
        RandData rand; //인스턴트 변수

        public CarContoller(RandData rand) // CarController 객체 생성되어질때 외부에서 RandData rand 가져옴
        {
            this.rand = rand;
        }

        public void InsRandDate(int count) // int count 갯수만큼 정보가 나옴.
        {

            for (int i = 0; i < count; i++)
            {
                listCar.Add(new Car(rand.getModel(),
                                 rand.getColor(),
                                 rand.getCompany(),
                                 rand.getPrice()));
            }
        }

        public void carView()
        {
            for (int i = 0; i < listCar.Count; i++)
            {
                Console.WriteLine("번호: " + (i + 1));
                Console.WriteLine(listCar[i].ToString());     // list[i].printInfoCar(); 이 둘 중 아무거나 쓰면 됨.
            }
        }

        public void carView2()
        {
            for (int i = 0; i < listCar.Count; i++)
            {
                Console.WriteLine("번호: " + (i + 1));
                listCar[i].printInfoCar();     // list[i].printInfoCar(); 이 둘 중 아무거나 쓰면 됨.
            }
        }

        public void removeAll()
        {
            if (listCar.Count == 0)
            {
                Console.WriteLine("차량 데이터존재x");
                return;
            }
            listCar.Clear();
        }

        public void addCarItem(Car car)
        {
            listCar.Add(car);
        }

        public void delCarItem(string model)//차량의 모델명으로 삭제하기 위함
        {
            for (int i = 0; i < listCar.Count; i++)
            {
                if (listCar[i].Model.Equals(model))
                {
                    listCar.RemoveAt(i--); // 두 개가 연속되는 경우 리스트가 당겨져 오류발생 하기에 --로 해결.
                }
            }
        }


        public void updateCarItem(string[] model) //옛날 정보를 받아 새로운 정보 업데이트
                                                  //두개 값을 동시에 받아 리턴 못하므로 배열로 사용
        {
            for (int i = 0; i < listCar.Count; i++)
            {
                if (listCar[i].Model.Equals(model[OLD_MODEL]))
                {
                    listCar[i].Model = model[NEW_MODEL];
                }
            }
        }

    }



}

