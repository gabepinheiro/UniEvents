using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(UniEvents.Startup))]
namespace UniEvents
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
