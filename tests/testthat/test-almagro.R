library(testthat)

test_output <- function() {
  test_that('each condition gives the expected output', {
    expect_equal(
      almagro(
        charlson_index=1,
        fev=65,
        mmrc=1,
        exacerbation=0
      )
      ,
      0
    )

    expect_equal(
      almagro(
        charlson_index=5,
        fev=60,
        mmrc=2,
        exacerbation=2
      )
      ,
      4
    )

    expect_equal(
      almagro(
        charlson_index=8,
        fev=40,
        mmrc=3,
        exacerbation=3
      )
      ,
      8
    )

    expect_equal(
      almagro(
        charlson_index=8,
        fev=30,
        mmrc=4,
        exacerbation=3
      )
      ,
      10
    )
  })
}

test_output()
