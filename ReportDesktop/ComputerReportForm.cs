using System;
using System.Windows.Forms;

namespace ReportDesktop
{
    public partial class ComputerReportForm : Form
    {
        public ComputerReportForm()
        {
            InitializeComponent();
        }

        private void ComputerReportForm_Load(object sender, EventArgs e)
        {
            ComputerReportViewer.LoadDocument(Application.StartupPath + @"\..\..\ComputerReport.rdlx");
        }
    }
}
