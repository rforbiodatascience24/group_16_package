test_that("Splits correctly", {
  expect_equal(split_codon("AUGAAA"), c("AUG", "AAA"))
  expect_equal(split_codon("AUGAAAA", 2), c("UGA", "AAA"))
})
