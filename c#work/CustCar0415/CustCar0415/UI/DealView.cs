using CustCar0415.Common;
using CustCar0415.Control;
using CustCar0415.Model;
using MaterialSkin.Controls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
namespace CustCar0415.UI
{

    partial class DealView : MaterialForm
    {
        UnionController uHandler;
        public DealView()
        {
            InitializeComponent();
        }

        public DealView(UnionController uHandler) // 랜덤 생성한 데이터가 uHandler안에 들어가 있음.
        {                                         // 이걸 dealView에 뿌려줌
            InitializeComponent();
            this.uHandler = uHandler; // this.uHandler안엔 mainform안에서 만들어진 객체정보가 들어감.
        }

        private void initDealListView()
        {
            List<Deal<Car, Customer, Seller>> list = uHandler.ListUn;
           
            for (int i = 0; i < list.Count; i++)
            {
                dealSmListview.Items.Add(new ListViewItem(new String[]
                {
                    (i+1).ToString(), 
                    list[i].Car.Model, 
                    list[i].Car.Price, 
                    list[i].Customer.Name, 
                    list[i].Seller.Name, 
                    list[i].Date, 
                    list[i].Price
                }
                ));
            }

            setRowColor(Color.White, Color.LightGray);
            int index = dealSmListview.Items.Count - 1;
            dealSmListview.Items[index].Selected = true; // 선택하게 함.
            dealSmListview.Items[index].Focused = true; // 점선으로 선택함 [커서 반짝과 비슷함]
            dealSmListview.EnsureVisible(index); // 이동하게 함.
            CommMenu.colorListViewHeader(ref dealSmListview, Color.DarkCyan, Color.White); // <--- 추가, ref는 '포인터'개념
        }
    
        


        private void DealView_Load(object sender, EventArgs e)
        {
            initDealListView();
        }

        private void dealSmExit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void setRowColor(Color color1, Color color2)
        {
            foreach (ListViewItem item in dealSmListview.Items)
            {
                if ((item.Index % 2) == 0)
                {
                    item.BackColor = color1; // 짝수라인 색깔 지정
                }
                else
                {
                    item.BackColor = color2; // 홀수라인 색깔 지정
                }
            }
        }

    }
}
