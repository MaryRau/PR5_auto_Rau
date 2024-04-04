using PR5_auto_Rau;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace UnitTestProject1
{
    [TestClass]
    public class RegTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            var page = new RegPage();
            Assert.IsTrue(page.Reg("Иванов Иван Иванович", "iviviv@gmail.com", "1QWer3!c", "М", "Администратор", "123", "123"));
            Assert.IsFalse(page.Reg("Чашин*Елизар*Михеевич", "Elizor@gmai,com", "yntiRS", "Мужской", "Администратор", "+7(1070)628 29 16", ""));
            Assert.IsFalse(page.Reg("Иванов Иван Иванович", "iviviv@gmail.com", "", "М", "Администратор", "123", "123"));
        }
    }
}
