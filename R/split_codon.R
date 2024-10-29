#' Split DNA sequence into codons
#'
#' @param dna_seq String of the input RNA sequence
#' @param start Starting codon position
#'
#' @return Vector of codons extracted from input string
#' @export
#'
#' @examples
#' split_codon("AUGCGUGAC")
#'
#' rna <-("UAUGCGCCAAA")
#' pos=2
#' split_codon(rna, pos)

split_codon <- function(rna_seq, start = 1){
  len <- nchar(rna_seq)
  codons <- substring(rna_seq,
                      first = seq(from = start, to = len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = len, by = 3))
  return(codons)
}
