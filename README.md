
<!-- README.md is generated from README.Rmd. Please edit that file -->

# polypack

<!-- badges: start -->

[![R-CMD-check](https://github.com/joseailton100224/polypack/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/joseailton100224/polypack/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

O objetivo do pacote é construir uma tabela frequência de uma variável
de um data frame.

## Installation

You can install the development version of polypack from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("joseailton100224/polypack")
```

## Example

Este é um exemplo básico que mostra como construir a tabela de
frequência a partir de um data frame:

``` r
library(polypack)
## basic example code

tabela_frequencia(mb$Estatist.)
#>   Intervalos Frequência Frequência Relativa  Frequência Relativa (%)
#> 1    [4,5.2)          1                0.04                        4
#> 2  [5.2,6.4)          0                0.00                        0
#> 3  [6.4,7.6)          5                0.20                       20
#> 4  [7.6,8.8)          7                0.28                       28
#> 5   [8.8,10)         12                0.48                       48
#>   Frequência Acumulada (%)
#> 1                        4
#> 2                        4
#> 3                       24
#> 4                       52
#> 5                      100
```

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
