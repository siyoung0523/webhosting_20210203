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
    partial class UcAddCar : UserControl
    {
        string model;
        string company;
        string color;
        string price;
        UnionController uHandler;
        AddData ad; //인스턴스 변수 - 외부에서 받은 변수를 객체 내에서 쓰기 위함
        public delegate void AddCarConfirmEventHandler(object sender, EventArgs e); //사용자(내가) 정의 매세지
        public event AddCarConfirmEventHandler addCarConfirmEvevt; // 사용자[내가] 만드는 이벤트

        public UcAddCar()
        {
            InitializeComponent();
        }

        public UcAddCar(UnionController uHandler) //오버로딩
        {
            InitializeComponent();
            this.uHandler = uHandler; //메인폼에서 만들어진 객체를 재사용 하기 위해서 적음

        }
        public UcAddCar(UnionController uHandler, AddData ad) //오버로딩
        {
            InitializeComponent();
            this.uHandler = uHandler; //메인폼에서 만들어진 객체를 재사용 하기 위해서 적음
            this.ad = ad;
        }

        private void ucComboModel_SelectedIndexChanged(object sender, EventArgs e)
        {
            model = showCarCombo(sender);
            ucInfoModel.Text = model;
            ucInfoModel.ForeColor = Color.Red;

            switch (model)
            {
                case "그랜저":
                    ucPictureBox1.Image = Properties.Resources.그랜저_앞; // 파일의 사진 정보를 변수처럼 끌어올 수 있음.
                    ucPictureBox2.Image = Properties.Resources.그랜저_옆;
                    ucPictureBox3.Image = Properties.Resources.그랜저_뒤;
                    ucPictureBox4.Image = Properties.Resources.그랜저_실내1;
                    break;

                case "제네시스":
                    ucPictureBox1.Image = Properties.Resources.g80_앞;
                    ucPictureBox2.Image = Properties.Resources.g80_뒤;
                    ucPictureBox3.Image = Properties.Resources.g80_옆;
                    ucPictureBox4.Image = Properties.Resources.G80_내부;
                    break;

                case "K8":
                    break;

                case "K7":
                    break;

                case "SM6":
                    break;
            }
        }

        private void ucComboCompany_SelectedIndexChanged(object sender, EventArgs e)
        {
            company = showCarCombo(sender);
            ucInfoCompany.Text = company; // 선택된 인덱스 값을 InfoCompany에 바로 넣음.
            ucInfoCompany.ForeColor = Color.Red;
        }

        private void ucComboColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            color = showCarCombo(sender);
            ucInfoColor.Text = color;
            ucInfoColor.ForeColor = Color.Red;
        }

        private void ucComboPrice_SelectedIndexChanged(object sender, EventArgs e)
        {
            price = showCarCombo(sender);
            ucInfoPrice.Text = price;
            ucInfoPrice.ForeColor = Color.Red;
        }

        private string showCarCombo(object obj) //object 타입의 sender를 받음
        {
            Sunny.UI.UIComboBox cb = obj as Sunny.UI.UIComboBox; // 들어온 정보가 Sunny UI의 콤보 박스로 부터 받아온지 알려주는 것[다형성]
            Console.WriteLine("index: " + cb.SelectedIndex);
            String item = cb.SelectedItem.ToString();//콤보 박스에서 선택한 아이템을 받음
            if (cb.SelectedIndex > -1)
            {
                Console.WriteLine("선택: " + item);
            }
            return item;
        }

        private void ucAddCarOk_Click(object sender, EventArgs e)
        {
            if (model == null)
            {
                MessageBox.Show("모델을 선택하세요.");
                ucComboModel.Select(); // 콤보박스로 포커스 옮기는 것.
                return;
            }
            if (company == null)
            {
                MessageBox.Show("제조사를 선택하세요.");
                ucComboCompany.Select(); // 콤보박스로 포커스 옮기는 것.
                return;
            }
            if (color == null)
            {
                MessageBox.Show("색상을 선택하세요.");
                ucComboColor.Select(); // 콤보박스로 포커스 옮기는 것.
                return;
            }
            if (price == null)
            {
                MessageBox.Show("가격을 선택하세요.");
                ucComboPrice.Select(); // 콤보박스로 포커스 옮기는 것.
                return;
            }
            uHandler.CarHandle.addItem(new Car(model, color, company, price));
            MessageBox.Show("구매할 차량 정보가 저장되었습니다");
            ucAddCarOk.Enabled = false;
            //ad.setStatusInfo("차량 정보가 등록되었습니다.");
            if(addCarConfirmEvevt != null)
            {
                addCarConfirmEvevt(this, new EventArgs());
            }
        }

        private void ucAddCarInit_Click(object sender, EventArgs e)
        {

        }
    }
}