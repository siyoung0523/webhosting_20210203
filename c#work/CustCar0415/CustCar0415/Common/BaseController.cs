using CustCar0415.Utill;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CustCar0415.Common
{
    abstract class BaseController //추상클래스 - 기능들을 정의하는 구문
    {
        protected RandData rand;
        protected List<object> listItem; // object는 최상위

        public abstract void insRandData(int count);
        public abstract void itemView();
        public abstract void removeAll();
        public abstract void addItem(object item);
        public abstract void delItem(string item);
        public abstract void updateItem(string[] item); //오버라이딩(재정의)를 해야함.
    }
}
