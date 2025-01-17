% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bam_processing.R
\name{tss_aggregate}
\alias{tss_aggregate}
\title{Aggregate TSSs}
\usage{
tss_aggregate(experiment)
}
\arguments{
\item{experiment}{TSRexploreR object.}
}
\value{
TSRexploreR object with GRanges of aggregated TSSs.
}
\description{
Aggregate overlapping TSSs to generate positional scores.
}
\details{
'import_bams' generates a GRanges object of non-aggregated TSSs.
This function aggregates overlapping TSSs into a sum total score
  per genomic position.
}
\examples{
bam_file <- system.file("extdata", "S288C.bam", package="TSRexploreR")
assembly <- system.file("extdata", "S288C_Assembly.fasta", package="TSRexploreR")
samples <- data.frame(sample_name="S288C", file_1=bam_file, file_2=NA)

exp <- tsr_explorer(sample_sheet=samples, genome_assembly=assembly)
exp <- exp \%>\% 
  import_bams(paired=TRUE) \%>\%
  tss_aggregate

}
