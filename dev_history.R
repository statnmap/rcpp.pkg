# Rcpp.package.skeleton("mypackage")

# instructions Rcpp
# * Edit the help file skeletons in 'man', possibly combining help files for
# multiple functions.
# * Edit the exports in 'NAMESPACE', and add necessary imports.
# * Put any C/C++/Fortran code in 'src'.
# * If you have compiled code, add a useDynLib() directive to 'NAMESPACE'.
# * Run R CMD build to build the package tarball.
# * Run R CMD check to check the package tarball.
#
# Read "Writing R Extensions" for more information.


# Hide dev_history from build
usethis::use_build_ignore("dev_history.R")

# Check package
devtools::check()

# Load package for test
devtools::load_all()

# Test function
rcpp_hello_world()

# Add Readme for github
usethis::use_readme_md()

# Init git to share this package
# Configure your git
usethis::use_git_config(
  scope = "project",
  user.name = "Sébastien Rochette",
  user.email = "sebastienrochettefr@gmail.com"
)

# library is protected by a .gitignore inside renv/ directory
usethis::use_git()
#> commit

# Send to github

# use roxygen
usethis::use_roxygen_md()
file.remove("NAMESPACE")
#> Add roxygen skeleton for Rcpp
usethis::use_r("RcppRoxygen")
#> Update doc and DESCRIPTION
attachment::att_amend_desc()

