using System;
using Xunit;

namespace HelloAKS.test
{
    public class HelloAksHomeControllerTest
    {
        [Fact]
        public void HelloAksHomePageSlogan()
        {
            Assert.Equal("HelloAks", "HelloAks");
        }
    }
}
