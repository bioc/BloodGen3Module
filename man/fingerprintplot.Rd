% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fingerprintplot.R
\name{fingerprintplot}
\alias{fingerprintplot}
\title{Individual fingerprint visualization
The fingerprintplot function will generate fingerprint heatmap plots as a pdf file. The file will be saved in the working directory specified for the analysis.
The default cut off for visualization is set at 15\%, it can be changed to any value between 0-100\%.}
\usage{
fingerprintplot(
  Individual_df,
  sample_info = NULL,
  cutoff = NULL,
  rowSplit = TRUE,
  Ref_group = NULL,
  show_ref_group = FALSE,
  Group_column = NULL,
  Aggregate = NULL,
  filename = NULL,
  height = NULL,
  width = NULL
)
}
\arguments{
\item{Individual_df}{Dataframe with output generated after running the 'Individualcomparison' function}

\item{sample_info}{A dataframe with sample annotation.}

\item{cutoff}{Numeric value specifying the percentage cut off used for fingerprint visualization ( 0 to 100).}

\item{rowSplit}{Logical operator (TRUE/FALSE) to indicate if rows of the heatmaps should be split by each aggregate}

\item{Ref_group}{Characters name of reference group or samples that considered as control}

\item{show_ref_group}{Character vector specifying value within the group column that will be used as Reference group}

\item{Group_column}{Name of the columns for the groups used for the analysis}

\item{Aggregate}{Character vector specifying name of specific module aggregates    for heatmap fingerprint plot}

\item{filename}{Character vector with a name for saving file}

\item{height}{Sets the height of the graphics region in inches. The default values are 28}

\item{width}{Sets the width of the graphics region in inches. The default values are 17}
}
\value{
A heatmap of \% of module response in each single sample
}
\description{
Individual fingerprint visualization
The fingerprintplot function will generate fingerprint heatmap plots as a pdf file. The file will be saved in the working directory specified for the analysis.
The default cut off for visualization is set at 15\%, it can be changed to any value between 0-100\%.
}
\examples{
## data could be downloaded from ExperimentHub("GSE13015")
library(ExperimentHub)
library(SummarizedExperiment)
dat = ExperimentHub()
res = query(dat , "GSE13015")
GSE13015 = res[["EH5429"]]
Individual_df = Individualcomparison(GSE13015, sample_info = NULL,
                                    FC = 1.5, DIFF = 10, Group_column = "Group_test",
                                    Ref_group = "Control")
fingerprintplot(Individual_df, sample_info = NULL,
               cutoff = 15, rowSplit = TRUE, Ref_group = "Control",
               show_ref_group = FALSE, Group_column = "Group_test",
               Aggregate = c("A28"), filename = tempfile(), height = 5,
               width = 10)
}
\author{
Darawan Rinchai \href{mailto:drinchai@gmail.com}{drinchai@gmail.com}
}
