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

    public partial class DealView : MaterialForm
    {

        public DealView()
        {
            InitializeComponent();
        }

        private void initDealListView()
        {
            string[] data = { "1", "그랜저", "4천만원", "홍길동", "전우치", "2021년 4월 16일", "3천8백만원" };
            dealSmListview.Items.Add(new ListViewItem(data));
            for (int i = 0; i < 50; i++)
            {
                dealSmListview.Items.Add(new ListViewItem(new String[]
                {
                    (i+2).ToString(), "그랜저", "4천만원", "홍길동", "전우치", "2021년 4월 16일", "3천8백만원"
                }
                ));
            }

            setRowColor(Color.White, Color.LightGray);
            int index = dealSmListview.Items.Count - 1;
            dealSmListview.Items[index].Selected = true; // 선택하게 함.
            dealSmListview.Items[index].Focused = true; // 점선으로 선택함 [커서 반짝과 비슷함]
            dealSmListview.EnsureVisible(index); // 이동하게 함.
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
            foreach(ListViewItem item in dealSmListview.Items)
            {
                if((item.Index % 2) == 0)
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
