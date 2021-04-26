using CustCar0415.Control;
using CustCar0415.Model;
using MaterialSkin.Controls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CustCar0415.UI
{
    partial class AddData : MaterialForm
    {
#pragma warning disable CS0108
        const int WM_NCLBUTTONDOWN = 0xA1;
        const int HT_CAPTTON = 0x2;
        [DllImportAttribute("user32.dll")]
        static extern int SendMessage(IntPtr hWnd, int Msg, int wParam, int  lParam);
        [DllImportAttribute("user32.dll")]
        static extern bool ReleaseCapture();
#pragma warning restore CS0108

        const string UC_NAME_ADD_CAR = "UcAddCar";
        const string UC_NAME_ADD_CUST = "UcAddCust";
        const string UC_NAME_ADD_SELL = "UcAddSell";
        UcAddCar ucAddCar;
        UcAddCust ucAddCust;
        UcAddSell ucAddSell;
        UnionController uHandler;
        public AddData()
        {
            InitializeComponent();
            //객체 생성
            ucAddCar = new UcAddCar();
            ucAddCust = new UcAddCust();
            ucAddSell = new UcAddSell();
            centerLayout.Controls.Add(ucAddCar);
            centerLayout.Dock = DockStyle.Fill; //화면을 꽉 채워라
        }

        public AddData(UnionController uHandler) //오버로딩
        {
            InitializeComponent();
            this.uHandler = uHandler;
            //객체 생성
            ucAddCar = new UcAddCar(uHandler, this);
            ucAddCust = new UcAddCust(uHandler);
            ucAddSell = new UcAddSell(uHandler);
            centerLayout.Controls.Add(ucAddCar);
            centerLayout.Dock = DockStyle.Fill; //화면을 꽉 채워라
            ucAddCar.addCarConfirmEvevt += addCarConfirmHandler; //내가 만든 이벤트를 등록하는 것
        }

        private void addDataExit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void topLayer_MouseMove(object sender, MouseEventArgs e) //몰라도됨
            //패널이 윈도우를 막고 있기에, 드래그 할 수 있게 하는 기능임.
        {
            if(e.Button == MouseButtons.Left)
            {
                ReleaseCapture();
                SendMessage(Handle, WM_NCLBUTTONDOWN, HT_CAPTTON, 0); //window에게 직접 메세지를 날림.
            }
        }

        private void addDataCar_Click(object sender, EventArgs e)
        {
            controllView(ucAddCar, UC_NAME_ADD_CAR);
        }

        private void addDataCust_Click(object sender, EventArgs e)
        {
            controllView(ucAddCust, UC_NAME_ADD_CUST);

        }

        private void addDataSell_Click(object sender, EventArgs e)
        {
            controllView(ucAddSell, UC_NAME_ADD_SELL);

        }

        private void controllView(UserControl uc, string view)
        {
            if(!centerLayout.Controls.ContainsKey(view))
            {
                uc.Dock = DockStyle.Fill;
                centerLayout.Controls.Add(uc);
            }
            centerLayout.Controls[view].BringToFront();
        }

        public void setStatusInfo(string status)
        {
            addDataStatus.Text = status;
    
        }
        
        private void addCarConfirmHandler(object sender, EventArgs e) //내가 만든 이벤트 호출
        {
            addDataStatus.Text = "차량 정보를 등록하였습니다.";
        }

        private void addDataDeal_Click(object sender, EventArgs e)
        {
            uHandler.ListUn.Add(new Deal<Car, Customer, Seller>(uHandler.CarHandle.ListCar[0], 
                                                                uHandler.CustHandle.ListCust[0],
                                                                uHandler.SellHandle.ListSel[0],
                                                                DateTime.Now.ToString("yyyy년MM월dd일"),
                                                                uHandler.CarHandle.ListCar[0].Price+"3백만원"));
            MessageBox.Show("거래정보가 등록되었습니다.");
            Close();
        }
    }

     
}
