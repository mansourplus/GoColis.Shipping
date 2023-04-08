using GoColis.Shipping.Infrastructure.Common;
using Microsoft.EntityFrameworkCore;
using Xunit.Abstractions;
using Xunit.Sdk;

[assembly: TestFramework("GoColis.Shipping.Api.IntegrationTests.TestRunStart", "GoColis.Shipping.Api.IntegrationTests")]
namespace GoColis.Shipping.Api.IntegrationTests.Core;

public class TestRunStart : XunitTestFramework
{
    public TestRunStart(IMessageSink messageSink) : base(messageSink)
    {
        var options = new DbContextOptionsBuilder<DatabaseContext>()
                            .UseSqlServer(TestingConstants.SqlConnection);
        var dbContext = new DatabaseContext(options.Options);
        dbContext.Database.Migrate();
    }
}