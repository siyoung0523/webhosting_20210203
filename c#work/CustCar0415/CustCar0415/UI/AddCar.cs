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
    partial class AddCar : MaterialForm
    {
        string model;
        string company;
        string color;
        string price;
        UnionController uHandler;

        public AddCar()
        {
            InitializeComponent();
        }

        public AddCar(UnionController uHandler)
        {
            InitializeComponent();
            this.uHandler = uHandler; //메인폼에서 만들어진 객체를 재사용 하기 위해서 적음

        }


        private void addCarOk_Click(object sender, EventArgs e)
        {
            if(model == null)
            {
                MessageBox.Show("모델을 선택하세요.");
                comboModel.Select(); // 콤보박스로 포커스 옮기는 것.
                return;
            }
            if (company == null)
            {
                MessageBox.Show("제조사를 선택하세요.");
                comboCompany.Select(); // 콤보박스로 포커스 옮기는 것.
                return;
            }
            if (color == null)
            {
                MessageBox.Show("색상을 선택하세요.");
                comboColor.Select(); // 콤보박스로 포커스 옮기는 것.
                return;
            }
            if (price == null)
            {
                MessageBox.Show("가격을 선택하세요.");
                ComboPrice.Select(); // 콤보박스로 포커스 옮기는 것.
                return;
            }
            uHandler.CarHandle.addItem(new Car(model, color, company, price));
            MessageBox.Show("구매할 차량 정보가 저장되었습니다");
            Close();
        }

        private void addCarCancel_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void comboModel_SelectedIndexChanged(object sender, EventArgs e) // 콤보박스 선택하면 나오는 인덱스로 값을 반환
                                                                                //클릭한 인덱스(버튼 객체정보)가 sender에 들어감.
        {
            model =  showCarCombo(sender);
            infoModel.Text = model;
            infoModel.ForeColor = Color.Red;

            switch (model)
            {
                case "그랜저":
                    cxFlatPictureBox1.Image = Properties.Resources.그랜저_앞; // 파일의 사진 정보를 변수처럼 끌어올 수 있음.
                    cxFlatPictureBox2.Image = Properties.Resources.그랜저_옆;
                    cxFlatPictureBox3.Image = Properties.Resources.그랜저_뒤;
                    cxFlatPictureBox4.Image = Properties.Resources.그랜저_실내1;
                    break;

                case "제네시스":
                    cxFlatPictureBox1.Image = Properties.Resources.g80_앞;
                    cxFlatPictureBox2.Image = Properties.Resources.g80_뒤;
                    cxFlatPictureBox3.Image = Properties.Resources.g80_옆;
                    cxFlatPictureBox4.Image = Properties.Resources.G80_내부;
                    break;

                case "K8":
                    break;

                case "K7":
                    break;

                case "SM6":
                    break;
            }

        }

        private void comboCompany_SelectedIndexChanged(object sender, EventArgs e) //인덱스로 값의 유무 파악
        {
            company = showCarCombo(sender);
            infoCompany.Text = company; // 선택된 인덱스 값을 InfoCompany에 바로 넣음.
            infoCompany.ForeColor = Color.Red;

        }

        private void comboColor_SelectedIndexChanged(object sender, EventArgs e) //인덱스로 값의 유무 파악
        {
            color = showCarCombo(sender);
            infoColor.Text = color;
            infoColor.ForeColor = Color.Red;

        }

        private void ComboPrice_SelectedIndexChanged(object sender, EventArgs e) //인덱스로 값의 유무 파악
        {
            price = showCarCombo(sender);
            infoPrice.Text = price;
            infoPrice.ForeColor = Color.Red;

        }

        private string showCarCombo(object obj) //object 타입의 sender를 받음
        {
            Sunny.UI.UIComboBox cb = obj as Sunny.UI.UIComboBox; // 들어온 정보가 Sunny UI의 콤보 박스로 부터 받아온지 알려주는 것[다형성]
            Console.WriteLine("index: " + cb.SelectedIndex);
            String item = cb.SelectedItem.ToString();//콤보 박스에서 선택한 아이템을 받음
            if(cb.SelectedIndex > -1)
            {
                Console.WriteLine("선택: " + item);
            }
            return item;
        }
    }
}
