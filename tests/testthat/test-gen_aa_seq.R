test_that("gen_aa_seq works", {
  expect_equal(gen_aa_seq(c("AAG", "UUC", "UAU")), "KFY")
})
