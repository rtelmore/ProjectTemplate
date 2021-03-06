\name{ProjectTemplate-package}
\alias{ProjectTemplate-package}
\alias{ProjectTemplate}
\docType{package}
\title{
Automates the creation of new statistical analysis projects.
}
\description{
ProjectTemplate provides functions to automatically build a directory structure for a new R project. Using this structure, ProjectTemplate is able to automate data loading, preprocessing, library importing and unit testing.
}
\details{
\tabular{ll}{
Package: \tab ProjectTemplate\cr
Type: \tab Package\cr
Version: \tab 0.1-3\cr
Date: \tab 2010-10-02\cr
License: \tab Artistic-2.0\cr
LazyLoad: \tab yes\cr
}
create.project('project_name')
}
\references{
This code is inspired by the skeleton structure used by Ruby on Rails.
}
\keyword{ package }
\examples{
\dontrun{
library('ProjectTemplate')

create.project('project_name')

setwd('project_name')

load.project()}}
