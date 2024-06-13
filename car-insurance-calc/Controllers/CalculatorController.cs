using Microsoft.AspNetCore.Mvc;
using System.Text.Encodings.Web;

namespace car_insurance_calc.Controllers;

public class CalculatorController : Controller
{

    public IActionResult Index()
    {
        return View();
    }

    public string Addition(int a = 0, int b = 0)
    {
        return $"{a} + {b} = {a + b}";
    }
}