
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle10 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle11 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle12 = new System.Windows.Forms.DataGridViewCellStyle();
            this.uiDataGridView1 = new Sunny.UI.UIDataGridView();
            this.dealSmListview = new System.Windows.Forms.ListView();
            this.dealSmCount = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmModel = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmExit = new Sunny.UI.UISymbolButton();
            this.dealSmPrice = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmCustName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmSellName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmDate = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.dealSmRealPrice = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            ((System.ComponentModel.ISupportInitialize)(this.uiDataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // uiDataGridView1
            // 
            dataGridViewCellStyle10.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(243)))), ((int)(((byte)(255)))));
            this.uiDataGridView1.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle10;
            this.uiDataGridView1.BackgroundColor = System.Drawing.Color.White;
            this.uiDataGridView1.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle11.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle11.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(80)))), ((int)(((byte)(160)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle11.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            dataGridViewCellStyle11.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle11.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle11.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle11.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.uiDataGridView1.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle11;
            this.uiDataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.uiDataGridView1.EnableHeadersVisualStyles = false;
            this.uiDataGridView1.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.uiDataGridView1.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(80)))), ((int)(((byte)(160)))), ((int)(((byte)(255)))));
            this.uiDataGridView1.Location = new System.Drawing.Point(6, 270);
            this.uiDataGridView1.Name = "uiDataGridView1";
            dataGridViewCellStyle12.BackColor = System.Drawing.Color.White;
            this.uiDataGridView1.RowsDefaultCellStyle = dataGridViewCellStyle12;
            this.uiDataGridView1.RowTemplate.Height = 29;
            this.uiDataGridView1.SelectedIndex = -1;
            this.uiDataGridView1.ShowGridLine = true;
            this.uiDataGridView1.Size = new System.Drawing.Size(786, 167);
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
            this.dealSmListview.Location = new System.Drawing.Point(6, 91);
            this.dealSmListview.Name = "dealSmListview";
            this.dealSmListview.Size = new System.Drawing.Size(785, 165);
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
            this.dealSmModel.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.dealSmModel.Width = 100;
            // 
            // dealSmExit
            // 
            this.dealSmExit.BackColor = System.Drawing.Color.Transparent;
            this.dealSmExit.Cursor = System.Windows.Forms.Cursors.Hand;
            this.dealSmExit.FillColor = System.Drawing.Color.Red;
            this.dealSmExit.Font = new System.Drawing.Font("Microsoft YaHei", 12F);
            this.dealSmExit.IsCircle = true;
            this.dealSmExit.Location = new System.Drawing.Point(692, 20);
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
            // dealSmPrice
            // 
            this.dealSmPrice.Text = "차량가격";
            this.dealSmPrice.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.dealSmPrice.Width = 100;
            // 
            // dealSmCustName
            // 
            this.dealSmCustName.Text = "구매고객";
            this.dealSmCustName.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.dealSmCustName.Width = 100;
            // 
            // dealSmSellName
            // 
            this.dealSmSellName.Text = "판매자";
            this.dealSmSellName.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.dealSmSellName.Width = 100;
            // 
            // dealSmDate
            // 
            this.dealSmDate.Text = "거래날짜";
            this.dealSmDate.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.dealSmDate.Width = 100;
            // 
            // dealSmRealPrice
            // 
            this.dealSmRealPrice.Text = "실거래가";
            this.dealSmRealPrice.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.dealSmRealPrice.Width = 100;
            // 
            // DealView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
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
    }
}