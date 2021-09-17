
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rsdash

<!-- badges: start -->
<!-- badges: end -->

The goal of Rsdash is to talk with the smartfigure API, probably for
pushing the smartfigure on a website.

## Installation

<!--
You can install the released version of Rsdash from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("Rsdash")
```
-->

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("smartfigures-dar/R-sdash")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(Rsdash)
## basic example code
sdashpanels(5)$title
#> [1] "GIN-Tonic: a digital shelf for your research files."                                              
#> [2] "Virtual Research environment: management of sensitive data"                                       
#> [3] "Switch vector: label Cre+ and Cre- cells"                                                         
#> [4] "SynapticPAC: accumulation of cAMP in pre-synaptic boutons"                                        
#> [5] "eOPN3: suppress neurotransmitter release at synaptic terminals with high spatiotemporal precision"
#> [6] "PAC-K: Potassium channel-based optogenetic silencing"                                             
#> [7] "BiPOLES: reliable bidirectional control of neuronal activity"                                     
#> [8] "ChrimsonSA: red light-activated channelrhodopsin mutant"                                          
#> [9] "Is authorship sufficient for today's collaborative research? A call for contributor roles."
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/master/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
