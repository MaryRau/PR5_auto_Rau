using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PR5_auto_Rau
{
    /// <summary>
    /// Логика взаимодействия для AuthPage.xaml
    /// </summary>
    public partial class AuthPage : Page
    {
        private int wrongEnter = 0;
        public AuthPage()
        {
            InitializeComponent();
        }

        private void btnEnter_Click(object sender, RoutedEventArgs e)
        {
            if (Auth(txtUsername.Text, txtPassword.Password) == false)
            {
                wrongEnter++;
            }
            else wrongEnter = 0;

            if (wrongEnter == 3)
            {
                txtBlockLogin.Visibility = (Visibility)1;
                txtBlockPassword.Visibility = (Visibility)1;
                txtPassword.Clear();
                txtPassword.Visibility = (Visibility)1;
                txtUsername.Clear();
                txtUsername.Visibility = (Visibility)1;
                btnEnter.Visibility = (Visibility)1;
                btnReg.Visibility = (Visibility)1;
                txtBlockCaptcha.Visibility = Visibility;
                btnConfCaptcha.Visibility = Visibility;
                String allowchar = "";
                allowchar = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z";
                allowchar += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,y,z";
                allowchar += "1,2,3,4,5,6,7,8,9,0";
                char[] a = { ',' };
                String[] ar = allowchar.Split(a);
                String pwd = "";
                string temp = "";
                Random r = new Random();

                for (int i = 0; i < 6; i++)
                {
                    temp = ar[(r.Next(0, ar.Length))];
                    pwd += temp;

                }
                txtBlockCaptcha.Text = pwd;

                txtCaptcha.Visibility = Visibility;

            }
        }

        private void btnConfCaptcha_Click(object sender, RoutedEventArgs e)
        {
            Captcha(txtCaptcha.Text, txtBlockCaptcha.Text);
        }

        public bool Captcha(string captchaContent, string enterCaptcha)
        {
            if (captchaContent == enterCaptcha)
            {
                txtCaptcha.Visibility = (Visibility)1;
                txtBlockCaptcha.Text = "";
                txtCaptcha.Clear();
                txtBlockLogin.Visibility = Visibility;
                txtBlockPassword.Visibility = Visibility;
                txtPassword.Visibility = Visibility;
                txtUsername.Visibility = Visibility;
                btnEnter.Visibility = Visibility;
                txtBlockCaptcha.Visibility = (Visibility)1;
                btnConfCaptcha.Visibility = (Visibility)1;
                btnReg.Visibility = Visibility;
                return true;
            }
            else return false;
        }

        public bool Auth(string login, string password)
        {
            if (string.IsNullOrEmpty(login) || string.IsNullOrEmpty(password))
            {
                MessageBox.Show("Введите логин и пароль!");
                return false;
            }

            using (var db = new UsersEntities())
            {
                var user = db.Users.AsNoTracking().FirstOrDefault(u => u.Логин == login && u.Пароль == password);

                if (user == null)
                {
                    MessageBox.Show("Пользователь с такими данными не найден!");
                    return false;
                }
                MessageBox.Show("Пользователь успешно найден!");
                txtUsername.Clear();
                txtPassword.Clear();

                return true;
            }
        }

        private void btnReg_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RegPage());
        }
    }
}
