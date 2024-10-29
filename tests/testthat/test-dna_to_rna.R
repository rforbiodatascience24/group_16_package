test_that("dna_to_rna correctly transcribes DNA to RNA", {
  expect_equal(dna_to_rna("ATGCTTAC"), "AUGCUUAC")
})
