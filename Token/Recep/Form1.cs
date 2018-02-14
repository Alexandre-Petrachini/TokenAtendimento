using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Recep
{
    public partial class Token : Form
    {
        int Cliente = 999999;
        int MaxSenha = 0;
        String hora= DateTime.Now.ToString("HH:mm:ss");
        String data = DateTime.Now.ToString("yyyy-MM-dd");

        Random rdn = new Random();
        int Senha = 0;
   
     

       


        public Token()
        {
            InitializeComponent();
            progressBar1.Maximum = 30;
            Senha = rdn.Next(11111111, 99999999);
            label2.Text = "" + Senha;
            atualizar();
        }


        private void atualizar()
        {
            Conexao comb = new Conexao();

            comb.open();

            try
            {
                comb.sql = "UPDATE tb01_token SET tb01_senha ='"+Senha+"' WHERE tb01_cliente = '1234567';";
              
            }
            catch (Exception e)
            {

            }
         

            int qt = comb.Runsql();

            comb.close();

        } 

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            
            progressBar1.Value++;

            if(progressBar1.Value == 30)
            {
                Senha = rdn.Next(00000000, 99999999);
                label2.Text = "" + Senha;
                atualizar();
                progressBar1.Value = 0;
            }
           


        }

        private void progressBar1_Click(object sender, EventArgs e)
        {

        }
    }
}
