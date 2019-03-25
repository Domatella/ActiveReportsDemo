namespace ReportDesktop
{
    partial class ComputerReportForm
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
            this.ComputerReportViewer = new GrapeCity.ActiveReports.Viewer.Win.Viewer();
            this.SuspendLayout();
            // 
            // ComputerReportViewer
            // 
            this.ComputerReportViewer.CurrentPage = 0;
            this.ComputerReportViewer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ComputerReportViewer.Location = new System.Drawing.Point(0, 0);
            this.ComputerReportViewer.Name = "ComputerReportViewer";
            this.ComputerReportViewer.PreviewPages = 0;
            // 
            // 
            // 
            // 
            // 
            // 
            this.ComputerReportViewer.Sidebar.ParametersPanel.ContextMenu = null;
            this.ComputerReportViewer.Sidebar.ParametersPanel.Width = 200;
            // 
            // 
            // 
            this.ComputerReportViewer.Sidebar.SearchPanel.ContextMenu = null;
            this.ComputerReportViewer.Sidebar.SearchPanel.Width = 200;
            // 
            // 
            // 
            this.ComputerReportViewer.Sidebar.ThumbnailsPanel.ContextMenu = null;
            this.ComputerReportViewer.Sidebar.ThumbnailsPanel.Width = 200;
            this.ComputerReportViewer.Sidebar.ThumbnailsPanel.Zoom = 0.1D;
            // 
            // 
            // 
            this.ComputerReportViewer.Sidebar.TocPanel.ContextMenu = null;
            this.ComputerReportViewer.Sidebar.TocPanel.Expanded = true;
            this.ComputerReportViewer.Sidebar.TocPanel.Width = 200;
            this.ComputerReportViewer.Sidebar.Width = 200;
            this.ComputerReportViewer.Size = new System.Drawing.Size(644, 398);
            this.ComputerReportViewer.TabIndex = 0;
            // 
            // ComputerReportForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(644, 398);
            this.Controls.Add(this.ComputerReportViewer);
            this.Name = "ComputerReportForm";
            this.Text = "Computer report";
            this.Load += new System.EventHandler(this.ComputerReportForm_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private GrapeCity.ActiveReports.Viewer.Win.Viewer ComputerReportViewer;
    }
}

