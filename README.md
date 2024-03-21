
<!-- README.md is generated from README.Rmd. Please edit that file -->

# polypack

<!-- badges: start -->
<!-- badges: end -->

O objetivo do pacote é construir uma tabela dinâmica de uma variável de
um data frame.

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
#> 1    [4,5.2)          1          0.04545455                 4.545455
#> 2  [5.2,6.4)          0          0.00000000                 0.000000
#> 3  [6.4,7.6)          5          0.22727273                22.727273
#> 4  [7.6,8.8)          7          0.31818182                31.818182
#> 5   [8.8,10)          9          0.40909091                40.909091
#>   Frequência Acumulada (%)
#> 1                 4.545455
#> 2                 4.545455
#> 3                27.272727
#> 4                59.090909
#> 5               100.000000
```

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
