using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TiemChungAnBinh
{
    public partial class DangKyTiemChung : Form
    {
        public DangKyTiemChung()
        {
            InitializeComponent();
        }

        private void DangKyTiemChung_Load(object sender, EventArgs e)
        {

        }

        private void submitBtn_Click(object sender, EventArgs e)
        {
            string message = "Hiện tại vacxin tại cơ sở không đủ cung cấp, bạn có muốn đặt mua trước hay không ?";
            string title = "Vacxin không đủ!";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result = MessageBox.Show(message, title, buttons, MessageBoxIcon.Warning);
            if (result == DialogResult.Yes)
            {
                this.Close();
            }
            else
            {
                this.Close();
            }
        }

        private void buylistBindingSource_CurrentChanged(object sender, EventArgs e)
        {

        }
    }

    public class Buylist
    {
        public string Masp { get; set; }
        public string Tengoi { get; set; }
        public string Money { get; set; }
    }
}
