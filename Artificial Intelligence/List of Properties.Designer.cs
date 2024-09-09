namespace Artificial_Intelligence
{
    partial class listOfProperties
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(listOfProperties));
            DataGridViewCellStyle dataGridViewCellStyle2 = new DataGridViewCellStyle();
            label1 = new Label();
            label2 = new Label();
            total_properties = new Label();
            selectedProperty_image = new PictureBox();
            property_list = new DataGridView();
            propertySelected_description = new TextBox();
            groupBox1 = new GroupBox();
            btnLast = new Button();
            btnFirst = new Button();
            btnNext = new Button();
            btnPrevious = new Button();
            telephone_value = new Label();
            bathrooms_value = new Label();
            bedrooms_value = new Label();
            contruction_value = new Label();
            label6 = new Label();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            ((System.ComponentModel.ISupportInitialize)selectedProperty_image).BeginInit();
            ((System.ComponentModel.ISupportInitialize)property_list).BeginInit();
            groupBox1.SuspendLayout();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 20.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.Location = new Point(55, 26);
            label1.Name = "label1";
            label1.Size = new Size(268, 37);
            label1.TabIndex = 0;
            label1.Text = "Individual Property";
            label1.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI", 14.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label2.Location = new Point(426, 26);
            label2.Name = "label2";
            label2.Size = new Size(233, 25);
            label2.TabIndex = 1;
            label2.Text = "Search: List of Properties";
            label2.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // total_properties
            // 
            total_properties.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            total_properties.AutoSize = true;
            total_properties.Font = new Font("Segoe UI Semibold", 11.25F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            total_properties.Location = new Point(462, 51);
            total_properties.Name = "total_properties";
            total_properties.Size = new Size(153, 20);
            total_properties.TabIndex = 2;
            total_properties.Text = "No Properties Found.";
            total_properties.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // selectedProperty_image
            // 
            selectedProperty_image.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            selectedProperty_image.BackgroundImage = (Image)resources.GetObject("selectedProperty_image.BackgroundImage");
            selectedProperty_image.BackgroundImageLayout = ImageLayout.Center;
            selectedProperty_image.Location = new Point(29, 82);
            selectedProperty_image.Name = "selectedProperty_image";
            selectedProperty_image.Size = new Size(328, 184);
            selectedProperty_image.TabIndex = 3;
            selectedProperty_image.TabStop = false;
            // 
            // property_list
            // 
            dataGridViewCellStyle2.SelectionBackColor = Color.FromArgb(0, 0, 64);
            dataGridViewCellStyle2.SelectionForeColor = Color.White;
            property_list.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle2;
            property_list.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            property_list.Location = new Point(378, 82);
            property_list.Name = "property_list";
            property_list.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            property_list.Size = new Size(310, 160);
            property_list.TabIndex = 6;
            // 
            // propertySelected_description
            // 
            propertySelected_description.Font = new Font("Segoe UI Semibold", 14.25F, FontStyle.Bold, GraphicsUnit.Point, 0);
            propertySelected_description.Location = new Point(29, 285);
            propertySelected_description.MaximumSize = new Size(328, 133);
            propertySelected_description.MinimumSize = new Size(328, 133);
            propertySelected_description.Multiline = true;
            propertySelected_description.Name = "propertySelected_description";
            propertySelected_description.ScrollBars = ScrollBars.Vertical;
            propertySelected_description.Size = new Size(328, 133);
            propertySelected_description.TabIndex = 7;
            propertySelected_description.Text = "No selected data";
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(btnLast);
            groupBox1.Controls.Add(btnFirst);
            groupBox1.Controls.Add(btnNext);
            groupBox1.Controls.Add(btnPrevious);
            groupBox1.Controls.Add(telephone_value);
            groupBox1.Controls.Add(bathrooms_value);
            groupBox1.Controls.Add(bedrooms_value);
            groupBox1.Controls.Add(contruction_value);
            groupBox1.Controls.Add(label6);
            groupBox1.Controls.Add(label5);
            groupBox1.Controls.Add(label4);
            groupBox1.Controls.Add(label3);
            groupBox1.Location = new Point(378, 257);
            groupBox1.Name = "groupBox1";
            groupBox1.Size = new Size(310, 204);
            groupBox1.TabIndex = 8;
            groupBox1.TabStop = false;
            groupBox1.Text = "Controlls";
            // 
            // btnLast
            // 
            btnLast.Location = new Point(155, 157);
            btnLast.Name = "btnLast";
            btnLast.Size = new Size(96, 30);
            btnLast.TabIndex = 10;
            btnLast.Text = "Last";
            btnLast.UseVisualStyleBackColor = true;
            // 
            // btnFirst
            // 
            btnFirst.Location = new Point(53, 157);
            btnFirst.Name = "btnFirst";
            btnFirst.Size = new Size(96, 30);
            btnFirst.TabIndex = 9;
            btnFirst.Text = "First";
            btnFirst.UseVisualStyleBackColor = true;
            // 
            // btnNext
            // 
            btnNext.Location = new Point(155, 120);
            btnNext.Name = "btnNext";
            btnNext.Size = new Size(96, 30);
            btnNext.TabIndex = 8;
            btnNext.Text = "Next";
            btnNext.UseVisualStyleBackColor = true;
            // 
            // btnPrevious
            // 
            btnPrevious.Location = new Point(53, 120);
            btnPrevious.Name = "btnPrevious";
            btnPrevious.Size = new Size(96, 30);
            btnPrevious.TabIndex = 7;
            btnPrevious.Text = "Previous";
            btnPrevious.UseVisualStyleBackColor = true;
            // 
            // telephone_value
            // 
            telephone_value.AutoSize = true;
            telephone_value.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold);
            telephone_value.Location = new Point(172, 87);
            telephone_value.Name = "telephone_value";
            telephone_value.Size = new Size(14, 15);
            telephone_value.TabIndex = 6;
            telephone_value.Text = "0";
            // 
            // bathrooms_value
            // 
            bathrooms_value.AutoSize = true;
            bathrooms_value.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold);
            bathrooms_value.Location = new Point(172, 67);
            bathrooms_value.Name = "bathrooms_value";
            bathrooms_value.Size = new Size(14, 15);
            bathrooms_value.TabIndex = 5;
            bathrooms_value.Text = "0";
            // 
            // bedrooms_value
            // 
            bedrooms_value.AutoSize = true;
            bedrooms_value.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold);
            bedrooms_value.Location = new Point(172, 46);
            bedrooms_value.Name = "bedrooms_value";
            bedrooms_value.Size = new Size(14, 15);
            bedrooms_value.TabIndex = 4;
            bedrooms_value.Text = "0";
            // 
            // contruction_value
            // 
            contruction_value.AutoSize = true;
            contruction_value.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold);
            contruction_value.Location = new Point(172, 28);
            contruction_value.Name = "contruction_value";
            contruction_value.Size = new Size(27, 15);
            contruction_value.TabIndex = 3;
            contruction_value.Text = "null";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold);
            label6.Location = new Point(17, 88);
            label6.Name = "label6";
            label6.Size = new Size(62, 15);
            label6.TabIndex = 2;
            label6.Text = "Telephone";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold);
            label5.Location = new Point(17, 47);
            label5.Name = "label5";
            label5.Size = new Size(122, 15);
            label5.TabIndex = 1;
            label5.Text = "Number of bedrooms";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold);
            label4.Location = new Point(17, 68);
            label4.Name = "label4";
            label4.Size = new Size(126, 15);
            label4.TabIndex = 1;
            label4.Text = "Number of bathrooms";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold);
            label3.Location = new Point(17, 28);
            label3.Name = "label3";
            label3.Size = new Size(75, 15);
            label3.TabIndex = 0;
            label3.Text = "Construction";
            // 
            // listOfProperties
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(714, 498);
            Controls.Add(groupBox1);
            Controls.Add(propertySelected_description);
            Controls.Add(property_list);
            Controls.Add(selectedProperty_image);
            Controls.Add(total_properties);
            Controls.Add(label2);
            Controls.Add(label1);
            Name = "listOfProperties";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "List of Properties";
            Load += listOfProperties_Load;
            ((System.ComponentModel.ISupportInitialize)selectedProperty_image).EndInit();
            ((System.ComponentModel.ISupportInitialize)property_list).EndInit();
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Label label2;
        private Label total_properties;
        private PictureBox selectedProperty_image;
        private DataGridView property_list;
        private TextBox propertySelected_description;
        private GroupBox groupBox1;
        private Label label3;
        private Label telephone_value;
        private Label bathrooms_value;
        private Label bedrooms_value;
        private Label contruction_value;
        private Label label6;
        private Label label5;
        private Label label4;
        private Button btnLast;
        private Button btnFirst;
        private Button btnNext;
        private Button btnPrevious;
    }
}