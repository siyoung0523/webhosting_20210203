using CustCar0415.Control;
using CustCar0415.Model;
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
    partial class UcAddSell : UserControl
    {
        UnionController uHandler;

        public UcAddSell()
        {
            InitializeComponent();
        }
        public UcAddSell(UnionController uHandler) //우선 오버로딩 만들고, 필요 없으면 그때 지우면 됨
        {
            InitializeComponent();
            this.uHandler = uHandler;
        }

        private void ucAddSellOk_Click(object sender, EventArgs e)
        {
            //클릭 했을 떄, 사용자가 입력한 텍스트 박스 안의 정보를 받아옴.
            string name = ucAddSellName.Text;
            string tel = ucAddSellTel.Text;
            string jikwi = ucAddSellJikwi.Text;
            string office = ucAddSellOffice.Text;
            uHandler.SellHandle.addItem(new Seller(name, tel, jikwi, office));
            MessageBox.Show("판매자 정보가 등록되었습니다.");
            ucAddSellOk.Enabled = false;
        }

        private void ucAddSellInit_Click(object sender, EventArgs e)
        {
            
        }
    }
}
