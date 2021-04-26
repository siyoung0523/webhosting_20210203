using CustCar0415.Control;
using CustCar0415.UI;
using CustCar0415.Utill;
using MaterialSkin;
using MaterialSkin.Controls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CustCar0415
{
    public partial class MainWin : MaterialForm // 자식클래스 : 부모클래스 [ : 이건 상속시켜 주는 기호 ]
    {
        Font font;
        PrivateFontCollection pFont;
        CxFlatUI.CxFlatRoundButton[] btnArr;

        MyMenu menu = new MyMenu();
        UnionController uHandler = new UnionController(new RandData());

        public MainWin()
        {
            InitializeComponent();
            initFont();
            //메인창 디자인
            var msMgr = MaterialSkinManager.Instance;
            msMgr.Theme = MaterialSkinManager.Themes.LIGHT;
            msMgr.ColorScheme = new ColorScheme(
                Primary.LightBlue200, //액션바
                Primary.LightBlue500, //타이틀바
                Primary.LightBlue500,
                Accent.LightBlue200, 
                TextShade.WHITE);
        }

        private void help_Click(object sender, EventArgs e)
        {
            MessageBox.Show("고객차량관리앱 v1.0\n" + "2011년 4월 15일 by 최시영");
        }

        private void mainExit_Click(object sender, EventArgs e)
        {
            Application.Exit();

        }

        private void randInsert_Click(object sender, EventArgs e)
        {
            string size = myInputBox("랜덤하게 생성할 데이터 개수를 입력하세요", "랜덤 데이터 추가", "0");
            uHandler.insRandData(Convert.ToInt32(size));
        }

        private void dataView_Click(object sender, EventArgs e)
        {
            uHandler.itemView(); // 이건 콘솔에서만 보여주는 부분임.
            //new DealView().ShowDialog(); // ShowDialog()는 자식창 눌렀을때 작업 완료하지 않는이상 전환안됨.
            new DealView(uHandler).Show(); // Show는 부모창에서 자식창 눌렀을때 부모창 전환 됨.            
        }

        //데이터추가 버튼의 창 설정.
        public string myInputBox(string title, string body, string prompt)
        {
            string input = Microsoft.VisualBasic.Interaction.InputBox(title, body, prompt, -1, -1);
            return input;
        }

        //폰트적용
        public void initFont()
        {
            btnArr = new CxFlatUI.CxFlatRoundButton[]{ randInsert, randDel, dataView, dataInsert, dataDel, dataUpdate };
            //내가 사용한 버튼의 타입을 해야함.
            pFont = new PrivateFontCollection();
            pFont.AddFontFile("KAMIKZOM.ttf");
            Font font = new Font(pFont.Families[0], 13f); // 폰트사이즈
            //randInsert.Font = font; // randInsert 버튼의 폰트를 다운 받은 것으로 바꿈.
            foreach(var n in btnArr) // 향상된 for문. btnArr주소값을 n(지역변수)에 던짐. 그리고 자동으로 배열이 넘어감.
            {
                n.Font = font;
            }
            mainTitle.Font = font;
        }

        //창이 우리 눈에 보이기 시작하기 바로 전단계
        //창 속성 -> 이벤트 -> 로드 -> 더블클릭 시 자동생성
        private void MainWin_Load(object sender, EventArgs e)
        {
            //initFont(); // 변경한 폰트 적용
        }

        private void randDel_Click(object sender, EventArgs e)
        {
            uHandler.removeAll();
        }

        private void dataInsert_Click(object sender, EventArgs e)
        {
            //new AddCar(uHandler).ShowDialog(); //AddCar객체를 생성해서 띄우게 하기.[showdialog는 부모창 제어 못함]
            new AddData(uHandler).ShowDialog();
        }
    }
}
