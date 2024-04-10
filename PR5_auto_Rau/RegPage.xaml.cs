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
    /// Логика взаимодействия для RegPage.xaml
    /// </summary>
    public partial class RegPage : Page
    {
        public RegPage()
        {
            InitializeComponent();
        }

        private void btnReg_Click(object sender, RoutedEventArgs e)
        {
            Reg(txtFIO.Text, txtLogin.Text, txtPassword.Text, cmbSex.Text, cmbRole.Text, txtPhone.Text, txtPhoto.Text);
        }

        private void btnCencel_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AuthPage());
        }

        public bool Reg(string FIO, string login, string password, string sex, string role, string phone, string photo)
        {
            if (string.IsNullOrEmpty(FIO) ||
                string.IsNullOrEmpty(login) ||
                string.IsNullOrEmpty(password) ||
                string.IsNullOrEmpty(sex) ||
                string.IsNullOrEmpty(role) ||
                string.IsNullOrEmpty(phone) || PhoneNumberFormat(phone) == false)
            {
                MessageBox.Show("Введите все данные для регистрации!");
                return false;
            }


            UsersEntities db = new UsersEntities();
            Users userObject = new Users
            {
                ФИО = txtFIO.Text,
                Логин = txtLogin.Text,
                Пароль = txtPassword.Text,
                Роль = cmbRole.Text,
                Пол = cmbSex.Text,
                Номер_телефона = txtPhone.Text,
                Фото = txtPhoto.Text
            };

            var user = db.Users.AsNoTracking().FirstOrDefault(u => u.Логин.ToLower() == login.ToLower() && u.Пароль == password);
            if (user == null)
            {
                db.Users.Add(userObject);
                db.SaveChanges();
                return true;
            }

            else
            {
                MessageBox.Show("Пользователь с такими данными уже существует!");
                txtFIO.Clear();
                txtLogin.Clear();
                txtPassword.Clear();
                cmbSex.Items.Clear();
                cmbSex.Items.Clear();
                txtPhone.Clear();
                txtPhoto.Clear();

                return false;
            }

        }

        private bool PhoneNumberFormat(string phone)
        {
            int num;
            try
            {
                num = int.Parse(phone);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
