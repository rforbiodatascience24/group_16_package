#' Generate a Random DNA Sequence
#'
#' This function generates a random DNA sequence of a specific length.
#'
#' @param length An integer specifying the length of the DNA sequence.
#'
#' @return A character string representing a DNA sequence of the specified length.
#' @export
#'
#' @examples
#' # Generate a random DNA sequence of length 10
#' length = 10
#' dna_seq <- gen_dna_seq(length)
#' print(dna_seq)
gen_dna_seq <- function(length){
  noucleotides <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  dna_sequence <- paste0(noucleotides, collapse = "")
  return(dna_sequence)
}
