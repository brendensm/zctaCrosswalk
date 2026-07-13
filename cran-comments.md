## Submission summary

This submission for zctaCrosswalk 2.0.1 addresses the R CMD check errors that
placed the package under archival notice.

### Changes that fix the check errors

* The tidycensus vignette (`a02_workflow-tidycensus`) is now pre-computed. It
  previously called `tidycensus::get_acs()` at build time, which requires a
  Census API key and network access that are not available on CRAN's build
  machines and caused the vignette to error. The live source is retained in
  `vignettes/a02_workflow-tidycensus.Rmd.orig`; the shipped `.Rmd` contains only
  pre-rendered output, so it builds instantly with no key or network access.
* Declared `Depends: R (>= 4.1.0)` to reflect the package's use of the base
  pipe (`|>`).

### Maintainer change

This submission also transfers maintainership from Ari Lamstein to Brenden Smith
(brendensmithmi@gmail.com). Ari Lamstein (arilamstein@gmail.com), the outgoing
maintainer, approves this change and is confirming it separately by email. His
former `@market-bridge.com` address is no longer active, which is why the
maintainer address on record cannot be used to confirm the change.

## Test environments

* Local: macOS Sonoma 14.5, R 4.5.1 (aarch64-apple-darwin20)

## R CMD check results

0 errors | 0 warnings | 0 notes
