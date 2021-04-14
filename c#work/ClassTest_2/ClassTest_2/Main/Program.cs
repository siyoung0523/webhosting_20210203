using ClasssTest_2;
using ClassTest_2.Controll;
using ClassTest_2.Model;
using ClassTest_2.Utill;
using ClassTest_2.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassTest_2
{
    class Program
    {
        static void Main(string[] args)
        {
            RandData rand = new RandData();

            Menu menu = new Menu(); // 객체생성 - instance 메소드를 불러오기 위함.
            CarContoller carCon = new CarContoller(rand);
            CustController custCon = new CustController(rand);
            SellController selCon = new SellController(rand);
            while (true)
            {
                switch (menu.mainMenu()) //class변수는 객체 생성 후 불러오기
                {
                    case Menu.MENU_MAIN_RAND: // instance 변수는 
                        carCon.InsRandDate(menu.getRandSize());
                        custCon.InsRandDate_cus(menu.getRandSize());
                        selCon.InsRandDate_sell(menu.getRandSize());
                        break;
                    case Menu.MENU_MAIN_DEL_ALL:
                        carCon.removeAll();
                        custCon.removeAll();
                        selCon.removeAll();
                        break;
                    case Menu.MENU_MAIN_VIEW:
                        carCon.carView();
                        custCon.custView();
                        selCon.SellView();
                        break;
                    case Menu.MENU_MAIN_ADD:
                        switch (menu.subAddMenu())
                        {
                            case Menu.MENU_SUB_ADD_CAR:
                                carCon.addCarItem(menu.addCarMenu2());
                                break;
                            case Menu.MENU_SUB_ADD_CUST:
                                custCon.addCustItem(menu.addCustMenu());
                                break;
                            case Menu.MENU_SUB_ADD_SELL:
                                selCon.addSellItem(menu.addSellMenu());
                                break;
                            case Menu.MENU_SUB_ADD_EXIT:
                                break;
                        }
                        break;
                    case Menu.MENU_MAIN_DEL:
                        carCon.delCarItem(menu.delCarMenu());
                        custCon.delCustItem(menu.delCustMenu());
                        selCon.delSellItem(menu.delSellMenu());
                        break;
                    case Menu.MENU_MAIN_UPDATE:
                        carCon.updateCarItem(menu.updateCarMenu());
                        custCon.updateCarItem(menu.updateCustMenu());
                        selCon.updateSellItem(menu.updateSellMenu());
                        break;
                    case Menu.MENU_MAIN_EXIT:
                        Console.WriteLine("프로그램이 종료되었습니다.");
                        Environment.Exit(0);
                        break;
                    default:
                        break;
                }
            }
        }
    }
}
