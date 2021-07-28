
<!-- README.md is generated from README.Rmd. Please edit that file -->

# almagro

[![R-CMD-check](https://github.com/resplab/almagro/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/resplab/almagro/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/resplab/almagro/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/resplab/almagro/actions/workflows/test-coverage.yaml)
[![codecov](https://codecov.io/gh/resplab/almagro/branch/master/graph/badge.svg?token=6RZU4ED6GB)](https://codecov.io/gh/resplab/almagro)

The goal of almagro is to calculate the CODEX index in COPD.

## Installation

You can install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("resplab/almagro")
```

## Example

This is a basic example which calculate the CODEX index, which is used to predict survival and risk of COPD readmission and assess the severity. The individual has Charlson Index (relatinng long-term mortality with the paitent's comorbidity) 1, 65% forced expiratory volume in one second (FEV1), the dyspnea scale of modified Medical Research Council (mMRC) 1, and 2 severe exacerbation of COPD during the precious year. He/she would have CODEX score 1.

``` r
library(almagro)
almagro(charlson_index=1, fev=65, mmrc=1, exacerbation=2)
$codex
[1] 1
```


