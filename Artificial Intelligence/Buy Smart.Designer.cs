namespace Artificial_Intelligence
{
    partial class home
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(home));
            title = new Label();
            bannerImage = new PictureBox();
            description = new Label();
            exit = new Button();
            Continue = new Button();
            ((System.ComponentModel.ISupportInitialize)bannerImage).BeginInit();
            SuspendLayout();
            // 
            // title
            // 
            title.AutoSize = true;
            title.BackColor = Color.Transparent;
            title.FlatStyle = FlatStyle.Popup;
            title.Font = new Font("Times New Roman", 22F, FontStyle.Bold);
            title.Location = new Point(270, 25);
            title.Name = "title";
            title.Size = new Size(151, 35);
            title.TabIndex = 0;
            title.Text = "Buy Smart";
            title.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // bannerImage
            // 
            bannerImage.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            bannerImage.BackgroundImage = (Image)resources.GetObject("bannerImage.BackgroundImage");
            bannerImage.BackgroundImageLayout = ImageLayout.Center;
            bannerImage.Cursor = Cursors.No;
            bannerImage.Location = new Point(162, 81);
            bannerImage.MaximumSize = new Size(366, 240);
            bannerImage.MinimumSize = new Size(366, 240);
            bannerImage.Name = "bannerImage";
            bannerImage.Size = new Size(366, 240);
            bannerImage.SizeMode = PictureBoxSizeMode.CenterImage;
            bannerImage.TabIndex = 1;
            bannerImage.TabStop = false;
            // 
            // description
            // 
            description.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            description.AutoSize = true;
            description.Font = new Font("Times New Roman", 14F, FontStyle.Italic);
            description.ForeColor = SystemColors.ControlDarkDark;
            description.Location = new Point(66, 349);
            description.Name = "description";
            description.Size = new Size(558, 105);
            description.TabIndex = 2;
            description.Text = resources.GetString("description.Text");
            // 
            // exit
            // 
            exit.Cursor = Cursors.Hand;
            exit.Font = new Font("Times New Roman", 12F, FontStyle.Bold);
            exit.Location = new Point(66, 466);
            exit.Name = "exit";
            exit.Size = new Size(75, 33);
            exit.TabIndex = 3;
            exit.Text = "Exit";
            exit.UseVisualStyleBackColor = true;
            exit.Click += exit_Click;
            // 
            // Continue
            // 
            Continue.Cursor = Cursors.Hand;
            Continue.Font = new Font("Times New Roman", 12F, FontStyle.Bold);
            Continue.Location = new Point(536, 466);
            Continue.Name = "Continue";
            Continue.Size = new Size(88, 33);
            Continue.TabIndex = 4;
            Continue.Text = "Continue";
            Continue.UseVisualStyleBackColor = true;
            Continue.Click += Continue_Click;
            // 
            // home
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(700, 561);
            Controls.Add(Continue);
            Controls.Add(exit);
            Controls.Add(description);
            Controls.Add(bannerImage);
            Controls.Add(title);
            MaximumSize = new Size(716, 600);
            MinimumSize = new Size(716, 600);
            Name = "home";
            ShowIcon = false;
            ShowInTaskbar = false;
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Buy Smart";
            Load += home_Load;
            ((System.ComponentModel.ISupportInitialize)bannerImage).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label title;
        private PictureBox bannerImage;
        private Label description;
        private Button exit;
        private Button Continue;
    }
}
