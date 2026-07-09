# Pre-compute the tidycensus vignette.
#
# This vignette calls tidycensus::get_acs(), which needs a Census API key and
# network access -- neither is available on CRAN's build machines. To avoid a
# build-time error we ship a *pre-computed* vignette: run this script locally
# (with a valid CENSUS_API_KEY set) to execute the live code once and bake the
# output into vignettes/a02_workflow-tidycensus.Rmd.
#
# The .Rmd.orig file holds the real, live source. The generated .Rmd has no live
# API chunks, so CRAN renders it instantly with no key or network.
#
# Get a free key at https://api.census.gov/data/key_signup.html and set it with
#   tidycensus::census_api_key("YOUR_KEY", install = TRUE)
# (restart R afterwards), or add CENSUS_API_KEY=... to ~/.Renviron.

stopifnot(
  "CENSUS_API_KEY is not set -- see comments at the top of this script." =
    nzchar(Sys.getenv("CENSUS_API_KEY"))
)

knitr::knit(
  "vignettes/a02_workflow-tidycensus.Rmd.orig",
  "vignettes/a02_workflow-tidycensus.Rmd"
)
