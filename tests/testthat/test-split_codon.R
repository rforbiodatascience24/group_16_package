test_that("Splits correctly", {
  expect_equal(split_codon("ATGAAA"), c("ATG", "AAA"))
  expect_equal(split_codon("ATGAAAA", 2), c("TGA", "AAA"))
})
