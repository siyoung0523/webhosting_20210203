using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CustCar0415.Model
{
    class Deal<Ca, Cu, Se>//제네릭
    {
        private Ca ca; //차량정보
        private Cu cu; //고객정보
        private Se se; //판매자 정보
        private string date; // 거래날짜
        private string price; // 실제 거래금액

        //매개 변수를 사용하는 생성자
        public Deal(Ca ca, Cu cu, Se se, string date, string price)
        {
            this.ca = ca;
            this.cu = cu;
            this.se = se;
            this.date = date;
            this.price = price;
        }

        public Ca Car { get => ca; set => ca = value; }
        public Cu Customer { get => cu; set => cu = value; }
        public Se Seller { get => se; set => se = value; }
        public string Date { get => date; set => date = value; }
        public string Price { get => price; set => price = value; }

        //오버라이딩은 재정의, 오버로딩은 중복정의
        public override string ToString()
        {
            Car car = this.Car as Car; // Car car = car as Car; 과 같음
            Customer customer = this.Customer as Customer;
            Seller seller = this.Seller as Seller;
            string data = "★★구매 차량 정보★★\n";
            data += car.ToString();
            data += "★★구매 고객 정보★★\n";
            data += customer.ToString();
            data += "★★판매자 차량 정보★★\n";
            data += seller.ToString();
            data += "★★거래 정보★★\n";
            data += "거래날짜: " + date + "\n";
            data += "거래금액: " + price + "\n";
            return data;
        }

        public void dealInfo()
        {
            Car car = this.Car as Car; // Car car = car as Car; 과 같음
            Customer customer = this.Customer as Customer;
            Seller seller = this.Seller as Seller;
            Console.WriteLine("★★거래 요약 정보★★\n");
            Console.WriteLine("차량 모델: " + car.Model + "\n");
            Console.WriteLine("차량 가격: " + car.Price + "\n");
            Console.WriteLine("구매자: " + customer.Name + "\n");
            Console.WriteLine("판매자: " + seller.Name + "\n");
            Console.WriteLine("거래일: " + date + "\n");
            Console.WriteLine("실거래가: " + price + "\n");

        }
    }
}
