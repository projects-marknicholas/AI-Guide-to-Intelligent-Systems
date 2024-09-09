namespace Artificial_Intelligence
{
    public partial class home : Form
    {
        public home()
        {
            InitializeComponent();
            this.MaximizeBox = false;
        }

        private void home_Load(object sender, EventArgs e)
        {

        }

        private void exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Continue_Click(object sender, EventArgs e)
        {
            selectDetails detailsForm = new selectDetails();
            this.Hide();
            detailsForm.Show();
            detailsForm.FormClosed += (s, args) => this.Close();
        }
    }
}
