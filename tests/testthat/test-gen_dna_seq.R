test_that("gen_dna_seq produces a string of the correct length", {
  result <- gen_dna_seq(10)
  expect_equal(nchar(result), 10)
})
test_that("gen_dna_seq only contains valid nucleotides", {
  result <- gen_dna_seq(20)
  expect_true(all(strsplit(result, "")[[1]] %in%  c("A", "T", "G", "C")))
})
