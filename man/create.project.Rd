\name{create.project}
\alias{create.project}
\title{
Automatically creates a new project directory and all of its contents.
}
\description{
\code{create.project()} builds a project directory containing several sub-directories and files. The full output is described in the associated README, which can be seen on GitHub.
}
\usage{
create.project(project.name, full.project=FALSE)
}
\arguments{
  \item{project.name}{
	A character vector containing the name for this new project. Must be a valid directory name for your file system.
}
  \item{full.project}{
	By default, create.project will create a mini project.  If TRUE, the full project is created.
}
}
\value{
	No value is returned; this function is called for its side effects.
}
\examples{
\dontrun{
library('ProjectTemplate')

create.project('project_name')
create.project('big_project', full.project=TRUE)
}}
