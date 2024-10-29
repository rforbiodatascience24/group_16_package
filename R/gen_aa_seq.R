#' Generate aminoacid sequence
#'
#' @param codons this is just the triplet from the mRNA sequence
#'
#' @return paste_aa This function just joins amino acids without space in between
#' @export
#'
#' @examples
#' codons <-  c("AAT", "TGC", "GGC")
#' aa_seq <- gen_aa_seq(codons)
#' print(aa_seq)
gen_aa_seq <- function(codons){
  paste_aa <- paste0(genetic_code[codons], collapse = "")
  return(paste_aa)
}
