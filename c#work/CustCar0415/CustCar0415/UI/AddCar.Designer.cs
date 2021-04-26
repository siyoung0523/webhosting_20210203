
namespace CustCar0415.UI
{
    partial class AddCar
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.infoModel = new Sunny.UI.UISymbolLabel();
            this.infoPrice = new Sunny.UI.UISymbolLabel();
            this.infoColor = new Sunny.UI.UISymbolLabel();
            this.infoCompany = new Sunny.UI.UISymbolLabel();
            this.comboModel = new Sunny.UI.UIComboBox();
            this.comboCompany = new Sunny.UI.UIComboBox();
            this.comboColor = new Sunny.UI.UIComboBox();
            this.ComboPrice = new Sunny.UI.UIComboBox();
            this.addCarOk = new Sunny.UI.UISymbolButton();
            this.addCarCancel = new Sunny.UI.UISymbolButton();
            this.cxFlatPictureBox4 = new CxFlatUI.CxFlatPictureBox();
            this.cxFlatPictureBox3 = new CxFlatUI.CxFlatPictureBox();
            this.cxFlatPictureBox2 = new CxFlatUI.CxFlatPictureBox();
            this.cxFlatPictureBox1 = new CxFlatUI.CxFlatPictureBox();
            this.addCarExit = new Sunny.UI.UISymbolButton();
            ((System.ComponentModel.ISupportInitialize)(this.cxFlatPictureBox4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cxFlatPictureBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cxFlatPictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cxFlatPictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // infoModel
            // 
            this.infoModel.BackColor = System.Drawing.Color.Transparent;
            this.infoModel.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.infoModel.Location = new System.Drawing.Point(77, 366);
            this.infoModel.MinimumSize = new System.Drawing.Size(1, 1);
            this.infoModel.Name = "infoModel";
            this.infoModel.Padding = new System.Windows.Forms.Padding(28, 0, 0, 0);
            this.infoModel.Size = new System.Drawing.Size(117, 38);
            this.infoModel.Symbol = 61882;
            this.infoModel.TabIndex = 0;
            this.infoModel.Text = "모델명";
            // 
            // infoPrice
            // 
            this.infoPrice.BackColor = System.Drawing.Color.Transparent;
            this.infoPrice.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.infoPrice.Location = new System.Drawing.Point(616, 366);
            this.infoPrice.MinimumSize = new System.Drawing.Size(1, 1);
            this.infoPrice.Name = "infoPrice";
            this.infoPrice.Padding = new System.Windows.Forms.Padding(28, 0, 0, 0);
            this.infoPrice.Size = new System.Drawing.Size(117, 38);
            this.infoPrice.Symbol = 57587;
            this.infoPrice.TabIndex = 1;
            this.infoPrice.Text = "가격";
            // 
            // infoColor
            // 
            this.infoColor.BackColor = System.Drawing.Color.Transparent;
            this.infoColor.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.infoColor.Location = new System.Drawing.Point(424, 366);
            this.infoColor.MinimumSize = new System.Drawing.Size(1, 1);
            this.infoColor.Name = "infoColor";
            this.infoColor.Padding = new System.Windows.Forms.Padding(28, 0, 0, 0);
            this.infoColor.Size = new System.Drawing.Size(117, 38);
            this.infoColor.Symbol = 61635;
            this.infoColor.TabIndex = 2;
            this.infoColor.Text = "색상";
            // 
            // infoCompany
            // 
            this.infoCompany.BackColor = System.Drawing.Color.Transparent;
            this.infoCompany.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.infoCompany.Location = new System.Drawing.Point(245, 366);
            this.infoCompany.MinimumSize = new System.Drawing.Size(1, 1);
            this.infoCompany.Name = "infoCompany";
            this.infoCompany.Padding = new System.Windows.Forms.Padding(28, 0, 0, 0);
            this.infoCompany.Size = new System.Drawing.Size(117, 38);
            this.infoCompany.Symbol = 61879;
            this.infoCompany.TabIndex = 3;
            this.infoCompany.Text = "제조사";
            // 
            // comboModel
            // 
            this.comboModel.FillColor = System.Drawing.Color.White;
            this.comboModel.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.comboModel.Items.AddRange(new object[] {
            "그랜저",
            "제네시스",
            "K8",
            "K7",
            "SM6"});
            this.comboModel.Location = new System.Drawing.Point(76, 78);
            this.comboModel.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboModel.MinimumSize = new System.Drawing.Size(63, 0);
            this.comboModel.Name = "comboModel";
            this.comboModel.Padding = new System.Windows.Forms.Padding(0, 0, 30, 2);
            this.comboModel.Size = new System.Drawing.Size(117, 29);
            this.comboModel.TabIndex = 4;
            this.comboModel.TextAlignment = System.Drawing.ContentAlignment.MiddleLeft;
            this.comboModel.SelectedIndexChanged += new System.EventHandler(this.comboModel_SelectedIndexChanged);
            // 
            // comboCompany
            // 
            this.comboCompany.FillColor = System.Drawing.Color.White;
            this.comboCompany.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.comboCompany.Items.AddRange(new object[] {
            "현대",
            "기아",
            "삼성르노"});
            this.comboCompany.Location = new System.Drawing.Point(245, 78);
            this.comboCompany.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboCompany.MinimumSize = new System.Drawing.Size(63, 0);
            this.comboCompany.Name = "comboCompany";
            this.comboCompany.Padding = new System.Windows.Forms.Padding(0, 0, 30, 2);
            this.comboCompany.Size = new System.Drawing.Size(117, 29);
            this.comboCompany.TabIndex = 5;
            this.comboCompany.TextAlignment = System.Drawing.ContentAlignment.MiddleLeft;
            this.comboCompany.SelectedIndexChanged += new System.EventHandler(this.comboCompany_SelectedIndexChanged);
            // 
            // comboColor
            // 
            this.comboColor.FillColor = System.Drawing.Color.White;
            this.comboColor.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.comboColor.Items.AddRange(new object[] {
            "검정",
            "은색",
            "흰색",
            "파랑",
            "빨강"});
            this.comboColor.Location = new System.Drawing.Point(424, 78);
            this.comboColor.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboColor.MinimumSize = new System.Drawing.Size(63, 0);
            this.comboColor.Name = "comboColor";
            this.comboColor.Padding = new System.Windows.Forms.Padding(0, 0, 30, 2);
            this.comboColor.Size = new System.Drawing.Size(117, 29);
            this.comboColor.TabIndex = 5;
            this.comboColor.TextAlignment = System.Drawing.ContentAlignment.MiddleLeft;
            this.comboColor.SelectedIndexChanged += new System.EventHandler(this.comboColor_SelectedIndexChanged);
            // 
            // ComboPrice
            // 
            this.ComboPrice.FillColor = System.Drawing.Color.White;
            this.ComboPrice.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.ComboPrice.Items.AddRange(new object[] {
            "3천만원",
            "4천만원",
            "5천만원",
            "6천만원",
            "7천만원"});
            this.ComboPrice.Location = new System.Drawing.Point(616, 78);
            this.ComboPrice.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.ComboPrice.MinimumSize = new System.Drawing.Size(63, 0);
            this.ComboPrice.Name = "ComboPrice";
            this.ComboPrice.Padding = new System.Windows.Forms.Padding(0, 0, 30, 2);
            this.ComboPrice.Size = new System.Drawing.Size(117, 29);
            this.ComboPrice.TabIndex = 5;
            this.ComboPrice.TextAlignment = System.Drawing.ContentAlignment.MiddleLeft;
            this.ComboPrice.SelectedIndexChanged += new System.EventHandler(this.ComboPrice_SelectedIndexChanged);
            // 
            // addCarOk
            // 
            this.addCarOk.Cursor = System.Windows.Forms.Cursors.Hand;
            this.addCarOk.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.addCarOk.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.addCarOk.Location = new System.Drawing.Point(277, 410);
            this.addCarOk.MinimumSize = new System.Drawing.Size(1, 1);
            this.addCarOk.Name = "addCarOk";
            this.addCarOk.RectColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.addCarOk.Size = new System.Drawing.Size(85, 29);
            this.addCarOk.Style = Sunny.UI.UIStyle.Custom;
            this.addCarOk.TabIndex = 10;
            this.addCarOk.Text = "확인";
            this.addCarOk.Click += new System.EventHandler(this.addCarOk_Click);
            // 
            // addCarCancel
            // 
            this.addCarCancel.Cursor = System.Windows.Forms.Cursors.Hand;
            this.addCarCancel.FillColor = System.Drawing.Color.Red;
            this.addCarCancel.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.addCarCancel.Location = new System.Drawing.Point(424, 409);
            this.addCarCancel.MinimumSize = new System.Drawing.Size(1, 1);
            this.addCarCancel.Name = "addCarCancel";
            this.addCarCancel.RectColor = System.Drawing.Color.Red;
            this.addCarCancel.Size = new System.Drawing.Size(85, 29);
            this.addCarCancel.Style = Sunny.UI.UIStyle.Custom;
            this.addCarCancel.Symbol = 61453;
            this.addCarCancel.TabIndex = 11;
            this.addCarCancel.Text = "취소";
            this.addCarCancel.Click += new System.EventHandler(this.addCarCancel_Click);
            // 
            // cxFlatPictureBox4
            // 
            this.cxFlatPictureBox4.Image = global::CustCar0415.Properties.Resources.그랜저_실내1;
            this.cxFlatPictureBox4.Location = new System.Drawing.Point(392, 234);
            this.cxFlatPictureBox4.Name = "cxFlatPictureBox4";
            this.cxFlatPictureBox4.Size = new System.Drawing.Size(240, 114);
            this.cxFlatPictureBox4.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.cxFlatPictureBox4.TabIndex = 9;
            this.cxFlatPictureBox4.TabStop = false;
            // 
            // cxFlatPictureBox3
            // 
            this.cxFlatPictureBox3.Image = global::CustCar0415.Properties.Resources.그랜저_옆;
            this.cxFlatPictureBox3.Location = new System.Drawing.Point(146, 234);
            this.cxFlatPictureBox3.Name = "cxFlatPictureBox3";
            this.cxFlatPictureBox3.Size = new System.Drawing.Size(240, 114);
            this.cxFlatPictureBox3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.cxFlatPictureBox3.TabIndex = 8;
            this.cxFlatPictureBox3.TabStop = false;
            // 
            // cxFlatPictureBox2
            // 
            this.cxFlatPictureBox2.Image = global::CustCar0415.Properties.Resources.그랜저_뒤;
            this.cxFlatPictureBox2.InitialImage = null;
            this.cxFlatPictureBox2.Location = new System.Drawing.Point(392, 114);
            this.cxFlatPictureBox2.Name = "cxFlatPictureBox2";
            this.cxFlatPictureBox2.Size = new System.Drawing.Size(240, 114);
            this.cxFlatPictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.cxFlatPictureBox2.TabIndex = 7;
            this.cxFlatPictureBox2.TabStop = false;
            // 
            // cxFlatPictureBox1
            // 
            this.cxFlatPictureBox1.ErrorImage = null;
            this.cxFlatPictureBox1.Image = global::CustCar0415.Properties.Resources.그랜저_앞;
            this.cxFlatPictureBox1.Location = new System.Drawing.Point(146, 114);
            this.cxFlatPictureBox1.Name = "cxFlatPictureBox1";
            this.cxFlatPictureBox1.Size = new System.Drawing.Size(240, 114);
            this.cxFlatPictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.cxFlatPictureBox1.TabIndex = 6;
            this.cxFlatPictureBox1.TabStop = false;
            // 
            // addCarExit
            // 
            this.addCarExit.Cursor = System.Windows.Forms.Cursors.Hand;
            this.addCarExit.FillColor = System.Drawing.Color.Red;
            this.addCarExit.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.addCarExit.Location = new System.Drawing.Point(764, 12);
            this.addCarExit.MinimumSize = new System.Drawing.Size(1, 1);
            this.addCarExit.Name = "addCarExit";
            this.addCarExit.RectColor = System.Drawing.Color.Red;
            this.addCarExit.Size = new System.Drawing.Size(24, 30);
            this.addCarExit.Style = Sunny.UI.UIStyle.Custom;
            this.addCarExit.Symbol = 61453;
            this.addCarExit.TabIndex = 12;
            this.addCarExit.Click += new System.EventHandler(this.addCarCancel_Click);
            // 
            // AddCar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.ControlBox = false;
            this.Controls.Add(this.addCarExit);
            this.Controls.Add(this.addCarCancel);
            this.Controls.Add(this.addCarOk);
            this.Controls.Add(this.cxFlatPictureBox4);
            this.Controls.Add(this.cxFlatPictureBox3);
            this.Controls.Add(this.cxFlatPictureBox2);
            this.Controls.Add(this.cxFlatPictureBox1);
            this.Controls.Add(this.comboCompany);
            this.Controls.Add(this.comboColor);
            this.Controls.Add(this.ComboPrice);
            this.Controls.Add(this.comboModel);
            this.Controls.Add(this.infoCompany);
            this.Controls.Add(this.infoColor);
            this.Controls.Add(this.infoPrice);
            this.Controls.Add(this.infoModel);
            this.Name = "AddCar";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "AddCar";
            ((System.ComponentModel.ISupportInitialize)(this.cxFlatPictureBox4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cxFlatPictureBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cxFlatPictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cxFlatPictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Sunny.UI.UISymbolLabel infoModel;
        private Sunny.UI.UISymbolLabel infoPrice;
        private Sunny.UI.UISymbolLabel infoColor;
        private Sunny.UI.UISymbolLabel infoCompany;
        private Sunny.UI.UIComboBox comboModel;
        private Sunny.UI.UIComboBox comboCompany;
        private Sunny.UI.UIComboBox comboColor;
        private Sunny.UI.UIComboBox ComboPrice;
        private CxFlatUI.CxFlatPictureBox cxFlatPictureBox1;
        private CxFlatUI.CxFlatPictureBox cxFlatPictureBox2;
        private CxFlatUI.CxFlatPictureBox cxFlatPictureBox3;
        private CxFlatUI.CxFlatPictureBox cxFlatPictureBox4;
        private Sunny.UI.UISymbolButton addCarOk;
        private Sunny.UI.UISymbolButton addCarCancel;
        private Sunny.UI.UISymbolButton addCarExit;
    }
}