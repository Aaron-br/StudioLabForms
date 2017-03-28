using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace StudioWebFormsLab.App_Start
{
    public class BundleConfig
    {

        public static void RegisterBundles(BundleCollection bundles)
        {
            //SCRIPTS
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryui").Include(
                        "~/Scripts/jquery-ui-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                        "~/Scripts/bootstrap.js"));

            //CSS
            bundles.Add(new StyleBundle("~/bundles/css/bootstrap").Include(
                       "~/Content/bootstrap.css"));

            bundles.Add(new StyleBundle("~/bundles/css/estilos").Include(
                       "~/Content/MisEstilos.css"));

            bundles.Add(new StyleBundle("~/bundles/css/jqueryUI").Include(
                       "~/Content/Themes/base/*.css"));


        }



    }
}