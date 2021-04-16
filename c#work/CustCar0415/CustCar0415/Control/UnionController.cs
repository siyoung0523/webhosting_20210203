using CustCar0415.Model;
using CustCar0415.Utill;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CustCar0415.Control
{
    class UnionController
    {
        CarContoller carHandle;
        CustController custHandle;
        SellController sellHandle;
        List<Deal<Car, Customer, Seller>> listUn = new List<Deal<Car, Customer, Seller>>();
        RandData rand;

        //생성자 오버로딩
        public UnionController(RandData rand)
        {
            this.rand = rand;
            carHandle = new CarContoller(rand);
            custHandle = new CustController(rand);
            sellHandle = new SellController(rand);
        }

        //생성자 오버로딩
        public UnionController(CarContoller carHandle, CustController custHandle, SellController sellHandle)
        {
            this.carHandle = carHandle;
            this.custHandle = custHandle;
            this.sellHandle = sellHandle;
        }

        //internal은 java의 default와 비슷함. 여기서 패키지 내에선 public 같이 하고, 패키지에서 나오면 private같이 함.
        internal CarContoller CarHandle { get => carHandle; set => carHandle = value; }
        internal CustController CustHandle { get => custHandle; set => custHandle = value; }
        internal SellController SellHandle { get => sellHandle; set => sellHandle = value; }

        public void addItem(Deal<Car, Customer, Seller> deal)
        {
            listUn.Add(deal);
        }


        public void insRandData(int count)
        {
            for (int i = 0; i < count; i++)
            {
                listUn.Add(
                    new Deal<Car, Customer, Seller>(
                        new Car(rand.getModel(),
                            rand.getColor(),
                            rand.getCompany(),
                            rand.getPrice()),
                        new Customer(rand.getName(),
                            rand.getAge(),
                            rand.getTel(),
                            rand.getAddr(),
                            rand.getGender()),
                        new Seller(rand.getName(),
                            rand.getTel(),
                            rand.getJikwi(),
                            rand.getOffice()),
                        DateTime.Now.ToString("yyyy년MM월dd일-") +
                        DateTime.Now.ToString("HH:mm분:ss초"),
                        rand.getPrice() + "+500만원"));
            }
        }
        public void dealViewAll()
        {
            if (listUn.Count == 0)
            {
                Console.WriteLine("거래 데이터가 존재하지 않습니다.");
                return;
            }

            for (int i = 0; i < listUn.Count; i++)
            {
                Console.WriteLine("번호: " + (i + 1));
                Console.WriteLine(listUn[i].ToString());     // list[i].printInfoCar(); 이 둘 중 아무거나 쓰면 됨.
                Console.WriteLine("------------------");
            }
        }


        public void dealView()
        {
            if (listUn.Count == 0)
            {
                Console.WriteLine("거래 데이터가 존재하지 않습니다.");
                return;
            }

            for (int i = 0; i < listUn.Count; i++)
            {
                Console.WriteLine("번호: " + (i + 1));
                listUn[i].dealInfo();     // list[i].printInfoCar(); 이 둘 중 아무거나 쓰면 됨.
                Console.WriteLine("------------------");
            }
        }

        public void removeAll()
        {
            if(listUn.Count ==0)
            {
                Console.WriteLine("거래 데이터가 존재하지 않습니다.");
                return;
            }
            listUn.Clear();
        }

    }
}


