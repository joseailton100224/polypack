

test_that("check a table frequency", {
  actual <- tabela_frequencia(mb$Estatist.)
  actual<- actual$Frequência

  expected <-c(1,0,5,7,12)

  # expect_is(actual, 'expected')
  expect_equal(actual, expected)
})
