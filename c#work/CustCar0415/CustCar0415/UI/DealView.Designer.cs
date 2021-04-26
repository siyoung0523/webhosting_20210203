
namespace CustCar0415.UI
{
    partial class DealView
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.uiDataGridView1 = new Sunny.UI.UIDataGridView();
            this.dealSmListview = new System.Windows.Forms.ListView();
            this.dealSmCount = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmModel = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmPrice = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmCustName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmSellName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmDate = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmRealPrice = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmExit = new Sunny.UI.UISymbolButton();
            this.uiSymbolLabel1 = new Sunny.UI.UISymbolLabel();
            this.uiSymbolLabel2 = new Sunny.UI.UISymbolLabel();
            this.uiSymbolLabel3 = new Sunny.UI.UISymbolLabel();
            ((System.ComponentModel.ISupportInitialize)(this.uiDataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // uiDataGridView1
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(243)))), ((int)(((byte)(255)))));
            this.uiDataGridView1.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.uiDataGridView1.BackgroundColor = System.Drawing.Color.White;
            this.uiDataGridView1.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(80)))), ((int)(((byte)(160)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.uiDataGridView1.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.uiDataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.uiDataGridView1.EnableHeadersVisualStyles = false;
            this.uiDataGridView1.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.uiDataGridView1.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(80)))), ((int)(((byte)(160)))), ((int)(((byte)(255)))));
            this.uiDataGridView1.Location = new System.Drawing.Point(6, 285);
            this.uiDataGridView1.Name = "uiDataGridView1";
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.White;
            this.uiDataGridView1.RowsDefaultCellStyle = dataGridViewCellStyle3;
            this.uiDataGridView1.RowTemplate.Height = 29;
            this.uiDataGridView1.SelectedIndex = -1;
            this.uiDataGridView1.ShowGridLine = true;
            this.uiDataGridView1.Size = new System.Drawing.Size(786, 152);
            this.uiDataGridView1.TabIndex = 0;
            // 
            // dealSmListview
            // 
            this.dealSmListview.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.dealSmCount,
            this.dealSmModel,
            this.dealSmPrice,
            this.dealSmCustName,
            this.dealSmSellName,
            this.dealSmDate,
            this.dealSmRealPrice});
            this.dealSmListview.FullRowSelect = true;
            this.dealSmListview.HideSelection = false;
            this.dealSmListview.Location = new System.Drawing.Point(6, 109);
            this.dealSmListview.Name = "dealSmListview";
            this.dealSmListview.Size = new System.Drawing.Size(785, 137);
            this.dealSmListview.TabIndex = 0;
            this.dealSmListview.UseCompatibleStateImageBehavior = false;
            this.dealSmListview.View = System.Windows.Forms.View.Details;
            // 
            // dealSmCount
            // 
            this.dealSmCount.Text = "번호";
            this.dealSmCount.Width = 100;
            // 
            // dealSmModel
            // 
            this.dealSmModel.Text = "종차";
            this.dealSmModel.Width = 100;
            // 
            // dealSmPrice
            // 
            this.dealSmPrice.Text = "차량가격";
            this.dealSmPrice.Width = 100;
            // 
            // dealSmCustName
            // 
            this.dealSmCustName.Text = "구매고객";
            this.dealSmCustName.Width = 100;
            // 
            // dealSmSellName
            // 
            this.dealSmSellName.Text = "판매자";
            this.dealSmSellName.Width = 100;
            // 
            // dealSmDate
            // 
            this.dealSmDate.Text = "거래날짜";
            this.dealSmDate.Width = 100;
            // 
            // dealSmRealPrice
            // 
            this.dealSmRealPrice.Text = "실거래가";
            this.dealSmRealPrice.Width = 100;
            // 
            // dealSmExit
            // 
            this.dealSmExit.BackColor = System.Drawing.Color.Transparent;
            this.dealSmExit.Cursor = System.Windows.Forms.Cursors.Hand;
            this.dealSmExit.FillColor = System.Drawing.Color.Red;
            this.dealSmExit.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.dealSmExit.IsCircle = true;
            this.dealSmExit.Location = new System.Drawing.Point(732, 29);
            this.dealSmExit.MinimumSize = new System.Drawing.Size(1, 1);
            this.dealSmExit.Name = "dealSmExit";
            this.dealSmExit.RectColor = System.Drawing.Color.Red;
            this.dealSmExit.Size = new System.Drawing.Size(71, 65);
            this.dealSmExit.Style = Sunny.UI.UIStyle.Custom;
            this.dealSmExit.Symbol = 61457;
            this.dealSmExit.SymbolSize = 45;
            this.dealSmExit.TabIndex = 1;
            this.dealSmExit.Click += new System.EventHandler(this.dealSmExit_Click);
            // 
            // uiSymbolLabel1
            // 
            this.uiSymbolLabel1.BackColor = System.Drawing.Color.Transparent;
            this.uiSymbolLabel1.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.uiSymbolLabel1.Location = new System.Drawing.Point(6, 252);
            this.uiSymbolLabel1.MinimumSize = new System.Drawing.Size(1, 1);
            this.uiSymbolLabel1.Name = "uiSymbolLabel1";
            this.uiSymbolLabel1.Padding = new System.Windows.Forms.Padding(28, 0, 0, 0);
            this.uiSymbolLabel1.Size = new System.Drawing.Size(132, 27);
            this.uiSymbolLabel1.Symbol = 61454;
            this.uiSymbolLabel1.TabIndex = 2;
            this.uiSymbolLabel1.Text = "거래상세 정보";
            // 
            // uiSymbolLabel2
            // 
            this.uiSymbolLabel2.BackColor = System.Drawing.Color.Transparent;
            this.uiSymbolLabel2.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.uiSymbolLabel2.ForeColor = System.Drawing.Color.White;
            this.uiSymbolLabel2.Location = new System.Drawing.Point(294, 12);
            this.uiSymbolLabel2.MinimumSize = new System.Drawing.Size(1, 1);
            this.uiSymbolLabel2.Name = "uiSymbolLabel2";
            this.uiSymbolLabel2.Padding = new System.Windows.Forms.Padding(28, 0, 0, 0);
            this.uiSymbolLabel2.Size = new System.Drawing.Size(191, 40);
            this.uiSymbolLabel2.Style = Sunny.UI.UIStyle.Custom;
            this.uiSymbolLabel2.Symbol = 61442;
            this.uiSymbolLabel2.SymbolColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.uiSymbolLabel2.TabIndex = 3;
            this.uiSymbolLabel2.Text = "차량 고객 관리 정보";
            // 
            // uiSymbolLabel3
            // 
            this.uiSymbolLabel3.BackColor = System.Drawing.Color.Transparent;
            this.uiSymbolLabel3.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.uiSymbolLabel3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.uiSymbolLabel3.Location = new System.Drawing.Point(12, 76);
            this.uiSymbolLabel3.MinimumSize = new System.Drawing.Size(1, 1);
            this.uiSymbolLabel3.Name = "uiSymbolLabel3";
            this.uiSymbolLabel3.Padding = new System.Windows.Forms.Padding(28, 0, 0, 0);
            this.uiSymbolLabel3.Size = new System.Drawing.Size(132, 27);
            this.uiSymbolLabel3.Style = Sunny.UI.UIStyle.Custom;
            this.uiSymbolLabel3.Symbol = 61927;
            this.uiSymbolLabel3.TabIndex = 4;
            this.uiSymbolLabel3.Text = "고객거래 정보";
            // 
            // DealView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.uiSymbolLabel3);
            this.Controls.Add(this.uiSymbolLabel2);
            this.Controls.Add(this.uiSymbolLabel1);
            this.Controls.Add(this.dealSmExit);
            this.Controls.Add(this.dealSmListview);
            this.Controls.Add(this.uiDataGridView1);
            this.Name = "DealView";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "DealView";
            this.Load += new System.EventHandler(this.DealView_Load);
            ((System.ComponentModel.ISupportInitialize)(this.uiDataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Sunny.UI.UIDataGridView uiDataGridView1;
        private System.Windows.Forms.ListView dealSmListview;
        private System.Windows.Forms.ColumnHeader dealSmCount;
        private System.Windows.Forms.ColumnHeader dealSmModel;
        private Sunny.UI.UISymbolButton dealSmExit;
        private System.Windows.Forms.ColumnHeader dealSmPrice;
        private System.Windows.Forms.ColumnHeader dealSmCustName;
        private System.Windows.Forms.ColumnHeader dealSmSellName;
        private System.Windows.Forms.ColumnHeader dealSmDate;
        private System.Windows.Forms.ColumnHeader dealSmRealPrice;
        private Sunny.UI.UISymbolLabel uiSymbolLabel1;
        private Sunny.UI.UISymbolLabel uiSymbolLabel2;
        private Sunny.UI.UISymbolLabel uiSymbolLabel3;
    }
}