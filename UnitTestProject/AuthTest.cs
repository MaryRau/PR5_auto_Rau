using PR5_auto_Rau;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace UnitTestProject
{
    [TestClass]
    public class AuthTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            var page = new AuthPage();
            Assert.IsFalse(page.Auth("test", "test"));
            Assert.IsFalse(page.Auth("user1", "12345"));
            Assert.IsFalse(page.Auth("", ""));
            Assert.IsFalse(page.Auth(" ", " "));
            Assert.IsTrue(page.Captcha("432JGn", "432JGn"));
            Assert.IsFalse (page.Captcha("432JGn", "762JGn"));
            Assert.IsTrue(page.Auth("ELIZOR@gmai,com", "yntiRS"));
        }
    }
}
