using PR5_auto_Rau;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace UnitTestProject
{
    [TestClass]
    public class UnitTest3
    {
        [TestMethod]
        public void AuthTestSuccess()
        {
            var page = new AuthPage();
            Assert.IsTrue(page.Auth("Elizor@gmai,com", "yntiRS"));
            Assert.IsTrue(page.Auth("Adam@gmai.com", "7SP9CV"));
            Assert.IsTrue(page.Auth("Anisa@gmai.com", "Wh4OYm"));
            Assert.IsTrue(page.Auth("Feafan@@gmai,com", "Kc1PeS"));
        }
    }
}
