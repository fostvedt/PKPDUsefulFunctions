# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

# useful PKPD summary stats

gm_mean = function(x, na.rm=TRUE){
  mean_gm = mean(log(x[x > 0]), na.rm=T)
  exp(mean_gm)
}

geo_sd <- function(x,na.rm=TRUE) {
sdlog <- sd(log(x[x > 0]), na.rm = T)
exp(sdlog)
}

geo_cv<-function(x, na.rm = TRUE){
  sqrt(exp(log(geosd)^2)-1)
}


# Useful PKPD diagnostic functions
# These need only an R model file
# depends on: sure, ordinal, rms, PResidual, MASS








