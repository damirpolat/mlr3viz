% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LearnerClustHierarchical.R
\name{autoplot.LearnerClustHierarchical}
\alias{autoplot.LearnerClustHierarchical}
\title{Plot for Hierarchical Clustering Learners}
\usage{
\method{autoplot}{LearnerClustHierarchical}(object, ...)
}
\arguments{
\item{object}{(\link[mlr3cluster:LearnerClustAgnes]{mlr3cluster::LearnerClustAgnes} | \link[mlr3cluster:LearnerClustDiana]{mlr3cluster::LearnerClustDiana}).}

\item{...}{(\code{any}):
Additional arguments, passed down to \code{\link[factoextra:fviz_dend]{factoextra::fviz_dend()}}.}
}
\value{
\code{\link[ggplot2:ggplot]{ggplot2::ggplot()}} object.
}
\description{
Visualize dendrograms for hierarchical clusterers
using the package \CRANpkg{factoextra}.

Note that learner-specific plots are experimental and subject to change.
}
\examples{
library(mlr3)
library(mlr3cluster)
library(mlr3viz)

task = mlr_tasks$get("usarrests")

# agnes clustering
learner = mlr_learners$get("clust.agnes")
learner$train(task)
autoplot(learner)

# diana clustering
learner = mlr_learners$get("clust.diana")
learner$train(task)
autoplot(learner,
  k = learner$param_set$values$k, rect_fill = TRUE,
  rect = TRUE, rect_border = "red")
}
