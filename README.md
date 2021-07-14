
<!-- README.md is generated from README.Rmd. Please edit that file -->

# almagro

[![R-CMD-check](https://github.com/resplab/almagro/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/resplab/almagro/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/resplab/almagro/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/resplab/almagro/actions/workflows/test-coverage.yaml)

The goal of almagro is to calculate the CODEX index in COPD.

## Installation

You can install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("resplab/almagro")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(almagro)
almagro(charlson_index=1, fev=65, mmrc=1, exacerbation=2)
# > 1
```


