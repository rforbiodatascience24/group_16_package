``` r
library(biodogma)
```

## Description of the package `biodogma`:

The package `biodogma` consists of 5 simple functions that allows us to model the central dogma of molecular biology. This theory was proposed by Francis Crick in 1957 and states that genetic information flows from **DNA** to **RNA** via the process of <u>transcription</u>, and from RNA to **protein** via <u>translation</u>. To replicate this, we have created several functions to replicate these processes. The functions included in the `biodogma` package are:

### **Function 1:** `gen_dna_seq()`

The `gen_dna_seq` function generates a random DNA sequence of a specified length. Each nucleotide in the sequence is chosen randomly from the set {A, T, G, C} to simulate a DNA sequence.

#### **Usage**

`gen_dna_seq(length)`

##### **Arguments**

-   `length`: An integer specifying the desired length of the DNA sequence.

##### Return

-   A character string representing a randomly generated DNA sequence of the specified length.

#### Example

``` r
# Define the desired length for the DNA sequence
length <- 10
# Generate a random DNA sequence of the specified length
dna_seq <- gen_dna_seq(length)
# Print the generated DNA sequence
print(dna_seq)
#> [1] "TTATTCATTC"
```

### **Function 2:** `dna_to_rna()`

In the process of transcription, DNA is converted to RNA by replacing each occurrence of thymine (T) with uracil (U), which is specific to RNA.

#### Usage

`dna_to_rna(dna_sequence)`

##### Arguments

-   `dna_sequence`: a character string containing the DNA sequence that needs to be transcribed.

##### Return

-   A character string representing the RNA sequence, with all occurrences of “T” replaced by “U”.

``` r
# Define a DNA sequence
dna_sequence <- "ATGCTTAC"
# Transcribe DNA to RNA
rna_sequence <- dna_to_rna(dna_sequence)
# Print the RNA sequence
print(rna_sequence)
#> [1] "AUGCUUAC"
```

### **Function 3:** `split_codon()`

mRNA sequences are read in codons or groups of three ribonucleotides, each of these coding for a specific amino acid. The purpose of `split_codon` is to split a string of an RNA sequence into a vector of codons.

#### Usage

`split_codon(rna_seq, starting_codon_position)`

##### Arguments

-   `rna_seq`: a character string containing the RNA sequence.

-   `starting_codon_position`: an int variable providing the position of the initial codon in the given sequence. It’s *not necessary* to provide this argument, the default value being position 1.

##### Return

-   A vector containing the codons found in the given string.

``` r
# Provide an RNA sequence
rna_seq <- "AUGACUAAGA"
pos <- 2
# Call the function without specifying the starting position
split_codon(rna_seq)
#> [1] "AUG" "ACU" "AAG"
# Call the function specifying the starting position
split_codon(rna_seq, pos)
#> [1] "UGA" "CUA" "AGA"
```

### Function 4: `gen_aa_seq()`

After the mRNA has been synthesized, the molecule leaves the nucleus and is read by ribosomes for generating the resulting protein. In this process, called biological translation, each triplet of ribonucleotides (‘codons’) result in one specific amino acid, that will generate the amino acid chain. This equivalence happens accordingly to the genetic code.

**Usage**

`gen_aa_seq <- function(codons)`

##### **Arguments**

`codon`: a vector containing the triplets of the considered mRNA chain.

##### **Return**

After calling the function, the user will get a character string with the amino acid chain.

``` r
#Define a vector with the codons that will be translated into proteins. 
#NOTE: the user may obtain this vector from the function splitcodon(). 
codons <-  c("AUG", "ACU", "AAG") 
#Call the function 
aa_seq <- gen_aa_seq(codons)
print(aa_seq)
#> [1] "MTK"
```

### **Function 5:** `aa_count()`

Amino acid sequences contain valuable information about protein structure. The `aa_count` function helps visualize the composition of these sequences.

#### Installation

Make sure to have the `stringr` and `ggplot2` packages installed. If not, you can install them using:

`install.packages("stringr")`

`install.packages("ggplot2")`

#### Usage

`aa_count(seq)`

##### Arguments

-   `seq`: a character **string** containing the amino acid sequence.

##### Return

-   A `ggplot` bar plot showing the absolute frequencies for each amino acid present in the given sequence.

``` r
# Provide an amino acid sequence
seq1 <- "AKLPYNILSDFHVNSTRLGE"
# Call the function 
aa_plot <- aa_count(seq1)
```

### Discussion

#### **Use Cases for biodogma and Potential Additional Functions**

The **biodogma** package is valuable in education for simulating and visualizing transcription and translation processes, enhancing learning for students and educators. In bioinformatics research, it aids in generating synthetic DNA/RNA, analyzing codon usage, and visualizing amino acid compositions to support protein structure and function studies. Potential enhancements include adding reverse transcription for RNA-to-DNA conversion, codon optimization based on usage bias, and functions to calculate protein properties like molecular weight, hydrophobicity, and charge for detailed protein analysis.

#### Dependencies

Although it is usually better to avoid dependencies, in this package we have used functions from `stringr` and `ggplot2` packages, due to their improved functionality and great usage. The avoidance of dependencies simplifies the complexity of the maintenance of packages as new changes in other packages may affect the functionality of another. Furthermore, it increases the usage as it does not need additional packages besides the one you are installing. However, this is not always possible as packages like those integrating the tidyverse implement complex function in an efficient manner. We have used `@importFrom package function` tags in the function description because it reduces the repetition of the `package::function` form, however the latter does not add it to the namespace and reduces the dependencies as it only loads the used functions (although this can also be achieved by using `min_version = TRUE`).
