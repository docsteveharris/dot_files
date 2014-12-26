# author: Steve Harris
# date: 2014-11-20
# subject: Set-up R

# Readme
# ======
# Symlinked to /Users/steve/.Rprofile


# Todo
# ====


# Log
# ===
# 2014-11-20
# - file created

# Install packages
# ----------------

fresh_install <- 0
if (fresh_install) {

    options(repos=structure(c(CRAN="http://cran.ma.imperial.ac.uk/")))
    install.packages("Hmisc", type="both")
    install.packages("RMySQL", type="both")
    install.packages("data.table", type="both")
    install.packages("reshape", type="both")
    install.packages("ggplot2", type="both")
    install.packages("lubridate", type="both")
    install.packages("assertthat", type="both")
    install.packages("devtools", type="both")
    install.packages("knitr", type="both")
    devtools::install_github("colorout", "jalvesaq")


}

# Will be run at the start of an R sesssion
# -----------------------------------------
.First <- function(){
    # Set the default CRAN
    # Load standard libraries
    options(repos=structure(c(CRAN="http://cran.ma.imperial.ac.uk/")))
    library(Hmisc)
    library(ggplot2)
    library(data.table)
    library(reshape)
    library(assertthat)
    library(gmodels)
    library(devtools)
    # My package!
    library(datascibc)


    # Now set-up your syntax coloring
    # --------------------------------
    library(colorout)
    # colours defined by vector c(foreground, background, ?)
    setOutputColors256(
        normal=39, # white
        number=34,
        negnum=40,
        date=219,
        string=255,
        const=214,
        stderror=161,
        warn=c(1,0,1),
        error=c(1,15),
        verbose=TRUE)
    # uncomment below for default settings
    # setOutputColors256()


}

# These must run outside .First else will be destroyed when .First exits
CRAN <- "http://cran.ma.imperial.ac.uk/"

# My functions
# ------------
# R version of lookfor: `names(data)[grep('pattern',names(data))]`

lkf <- function(d,p) names(d)[grep(p,names(d))]
cat("\nWelcome at", date(), "\n")

# Will be run at the end of an R sesssion
# -----------------------------------------

.Last <- function(){
     cat("\nGoodbye at ", date(), "\n")
}

# Load basic libraries
