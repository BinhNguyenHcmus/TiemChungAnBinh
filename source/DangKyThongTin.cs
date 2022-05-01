using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Globalization;

namespace TiemChungAnBinh
{
    public partial class DangKyThongTin : Form
    {
        public DangKyThongTin()
        {
            InitializeComponent();
        }

        private void DangKyThongTin_Load(object sender, EventArgs e)
        {

        }

        private void dob_Enter(object sender, EventArgs e)
        {
            if (dobInput.Text == "dd/mm/yyyy")
            {
                dobInput.Text = "";
                dobInput.ForeColor = Color.Black;
            }
        }

        private void dob_Leave(object sender, EventArgs e)
        {
            string dob = dobInput.Text;
            if (dobInput.Text == "")
            {
                dobInput.Text = "dd/mm/yyyy";
                dobInput.ForeColor = Color.Silver;
            }
            DateTime parsed;
  
            if (!DateTime.TryParseExact(dob, "MM/dd/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out parsed))
            {
                MessageBox.Show("Ngày sinh sai định dạng !");
                dobInput.Text = "dd/mm/yyyy";
                dobInput.ForeColor = Color.Silver;
                return;
            }
            string year = dob.Substring(6);
            if (Int32.Parse(year) > 2010)
            {
                observerLabel.Visible = true;
                obsNameLabel.Visible = true;
                obsPhoneLabel.Visible = true;
                obsNameInput.Visible = true;
                obsPhoneInput.Visible = true;
                submitBtn.Location = new Point(150, 290);
            }
            else
            {
                observerLabel.Visible = false;
                obsNameLabel.Visible = false;
                obsPhoneLabel.Visible = false;
                obsNameInput.Visible = false;
                obsPhoneInput.Visible = false;
                submitBtn.Location = new Point(150, 200);
            }
        }

        private void submitBtn_Click(object sender, EventArgs e)
        {
            
            string dob = dobInput.Text;
            if(dob == "dd/mm/yyyy")
            {
                MessageBox.Show("Vui lòng nhập ngày sinh!");
                return;
            }
            
            MessageBox.Show(dob);
        }

        private void dobInput_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
