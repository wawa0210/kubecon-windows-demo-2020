using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eshop_api.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

namespace eshop_api.Controllers
{
    [Route("catalogs")]

    public class CataLogsController : Controller
    {
        private readonly ILogger<CataLogsController> _logger;

        public CataLogsController(ILogger<CataLogsController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public IEnumerable<CatalogItem> Get()
        {
            var results = PreconfiguredData.GetPreconfiguredCatalogItems();

            _logger.LogInformation(JsonConvert.SerializeObject(results));
            return results;
        }
    }
}