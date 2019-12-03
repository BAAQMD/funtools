context("pmean")

x1 <- c(6, 3, 7, 2, 1)
x2 <- c(3, 3, 6, 6, 1)
x3 <- c(8, 10, 10, 7, 7)

test_that("single vector", {

  expect_equal(
    pmean(x1),
    x1)

})

test_that("three vectors", {

  expect_equal(
    pmean(x1, x2, x3),
    1/3 * c(6 + 3 + 8, 3 + 3 + 10, 7 + 6 + 10, 2 + 6 + 7, 1 + 1 + 7))

})

test_that("in a mutate() clause", {

  require(dplyr)

  test_data <-
    data.frame(
      foo = x1, bar = x2, baz = x3)

  expected <-
    pmean(x1, x2, x3)

  test_data %>%
    dplyr::mutate(
      bap = pmean(foo, bar, baz)) %>%
    dplyr::pull(
      bap) %>%
    expect_equal(
      expected)

})
