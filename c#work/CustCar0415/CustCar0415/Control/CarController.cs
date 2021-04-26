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
    class CarController : BaseController // [ : <- 이건 상속을 의미]CarController는 BaseController에 상속됨을 의미함.
    {

        List<Car> listCar;

        internal List<Car> ListCar { get => listCar; set => listCar = value; } 

        public CarController(RandData rand) // CarController 객체 생성되어질때 외부에서 RandData rand 가져옴
        {
            listItem = new List<object>(); // listItem은 BaseController로 부터 상속 받은 것
            listCar = listItem.Cast<Car>().ToList();
            this.rand = rand;  // rand는 BaseController로 부터 상속 받은 것
        }


        public override void insRandData(int count) // int count 갯수만큼 정보가 나옴.
        {
            for (int i = 0; i < count; i++)
            {
                listCar.Add(new Car(
                    rand.getModel(),
                    rand.getColor(),
                    rand.getCompany(),
                    rand.getPrice()));
            }
        }

        public override void itemView()
        {
            for (int i = 0; i < listCar.Count; i++)
            {
                Console.WriteLine("번호: " + (i + 1));
                Console.WriteLine(listCar[i].ToString());     // list[i].printInfoCar(); 이 둘 중 아무거나 쓰면 됨.
            }
        }

        public override void removeAll()
        {
            if (listCar.Count == 0)
            {
                Console.WriteLine("차량 데이터존재x");
                return;
            }
            listCar.Clear();
        }

        public override void addItem(object item)
        {
            listCar.Add(item as Car); // 매개변수의 타입이 다르기에 as Car를 써서 object 타입을 Car타입으로 넣음(다형성)
        }

        public override void delItem(string item)
        {
            for (int i = 0; i < listCar.Count; i++)
            {
                if (listCar[i].Model.Equals(item))
                {
                    listCar.RemoveAt(i--); // 두 개가 연속되는 경우 리스트가 당겨져 오류발생 하기에 --로 해결.
                }
            }
        }

        public override void updateItem(string[] item)//옛날 정보를 받아 새로운 정보 업데이트
                                                      //두개 값을 동시에 받아 리턴 못하므로 배열로 사용
        {
            for (int i = 0; i < listCar.Count; i++)
            {
                if (listCar[i].Model.Equals(item[CommMenu.OLD_MODEL]))
                {
                    listCar[i].Model = item[CommMenu.NEW_MODEL];
                }
            }
        }
    }



}

