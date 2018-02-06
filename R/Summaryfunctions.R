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
  if(sum(x<=0,na.rm=T)>0) cat("Some values were negative and/or 0 and were removed\n")
  if(sum(is.na(x))>0) cat("There were ",sum(is.na(x)),"NA values removed\n")
  mean_gm = mean(log(x[x > 0]), na.rm=T)
  exp(mean_gm)
}

geo_sd <- function(x,na.rm=TRUE) {
  if(sum(x<=0,na.rm=T)>0) cat("Some values were negative and/or 0 and were removed\n")
  if(sum(is.na(x))>0) cat("There were ",sum(is.na(x)),"NA values removed\n")
  sdlog <- sd(log(x[x > 0]), na.rm = T)
  exp(sdlog)
}

geo_cv<-function(x, na.rm = TRUE){
  if(sum(x<=0,na.rm=T)>0) cat("Some values were negative and/or 0 and were removed\n")
  if(sum(is.na(x))>0) cat("There were ",sum(is.na(x)),"NA values removed\n")
  sqrt(exp(log(geosd(x))^2)-1)
}


# Useful PKPD diagnostic functions
# These need only an R model file
# depends on: sure, ordinal, rms, PResidual, MASS








