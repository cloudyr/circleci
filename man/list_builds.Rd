% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/endpoints.R
\name{list_builds}
\alias{list_builds}
\title{List builds}
\usage{
list_builds(project = NULL, user = NULL, limit = 30, offset = 0, ...)
}
\arguments{
\item{project}{A character string specifying the project name, or an object of class \dQuote{circle_project}. If the latter, there is no need to specify \code{user}. If \code{NULL}, all builds for all user projects are returned.}

\item{user}{A character string specifying the user name. This is not required if \code{project} is of class \dQuote{circle_project}.}

\item{limit}{An integer specifying the number of builds to return, with a maximum of 100.}

\item{offset}{An integer used as a paging parameter.}

\item{...}{Additional arguments passed to an HTTP request function, such as \code{\link[httr]{GET}}, via \code{\link{circleHTTP}}.}
}
\value{
A list of class \dQuote{circle_builds}, wherein each element is a \dQuote{circle_build}.
}
\description{
Retrieve a list of Circle CI project builds (among those available to the user) or for a specific project. Pagination paramaters allow one to retrieve all builds for a user or for a specific project.
}
\details{
Retrieves a very detailed list of projects and project-related information for all Circle CI projects attached to the current user.
}
\examples{
\dontrun{
# list most recent 5 builds across all projects
list_builds(limit = 5)

# list first 10 and next 10 builds
list_builds(limit = 10)
list_builds(limit = 10, offset = 10)

# list builds for a specific project
list_builds(list_projects[[1]])
}
}
\seealso{
\code{\link{get_build}}, \code{\link{list_projects}}
}

