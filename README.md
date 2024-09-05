
# The EC5007 package

The EC5007 package contains tutorials for data analysis and quantitative methods at the University of Limerick.

### Installation

Install the package from GitHub via devtools together with learnr using the following commands.

``` r
install.packages("devtools")
install.packages("learnr")

devtools::install_github("lkuld/EC5007")
```

### Examples


``` r
library(EC5007)
library(learnr)

## to see all available tutorials
available_tutorials("EC5007")

## to start the first tutorial "Tutorial_1"
run_tutorials("Tutorial_1", "EC5007")
```


