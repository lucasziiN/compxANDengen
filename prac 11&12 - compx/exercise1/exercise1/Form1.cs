using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace exercise1
{
    public partial class Form1 : Form
    {

        //Filter for csv files and all files
        const string FILTER = "CSV files|*.csv|All Files|*.*";

        const int SQUARE_SIZE = 10;



        public Form1()
        {
            InitializeComponent();
        }

        private void buttonOpenFile_Click(object sender, EventArgs e)
        {
            StreamReader reader;
            Graphics paper = pictureBox1.CreateGraphics();

            Brush white_brush = new SolidBrush(Color.White);
            Brush black_brush = new SolidBrush(Color.Black);

            string[] csv_array;
            string line = "";
            int num_white = 0;
            int num_black = 0;
            int x = 0;
            int y = 0;

            OpenFileDialog openFileDialog1 = new OpenFileDialog();

            openFileDialog1.Filter = FILTER;

            
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                reader = File.OpenText(openFileDialog1.FileName);

                try
                {
                    while (!reader.EndOfStream)
                    {
                        line = reader.ReadLine();

                        csv_array = line.Split(',');

                        for (int i = 0; i < csv_array.Length; i++)
                        {
                            int count;
                            if (!int.TryParse(csv_array[i], out count))
                            {
                                MessageBox.Show("Invalid number in file");
                            }

                            // Choose the brush based on whether i is even or odd
                            Brush brush = i % 2 == 0 ? white_brush : black_brush;

                            for (int j = 0; j < count; j++)
                            {
                                paper.FillRectangle(brush, x, y, SQUARE_SIZE, SQUARE_SIZE);
                                x += SQUARE_SIZE;
                            }

                            // If end of the line is reached, reset x and increase y
                            if (i == csv_array.Length - 1)
                            {
                                y += SQUARE_SIZE;
                                x = 0;
                            }
                        }




                    }
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }



        }

        private void buttonClear_Click(object sender, EventArgs e)
        {
            pictureBox1.Refresh();
        }
    }
}
