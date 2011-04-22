create.project <- function(project.name, full.project=FALSE)
{
  tmp.dir <- paste(project.name, '_tmp', sep = '')

  if (file.exists(project.name) || file.exists(tmp.dir))
  {
    stop(paste("Cannot run create.project() from a directory containing", 
               project.name, "or", tmp.dir))
  }
  
  dir.create(tmp.dir)
  
  if (full.project) {
    file.copy(system.file('defaults', package = 'ProjectTemplate'),
              file.path(tmp.dir),
              recursive = TRUE)

    file.rename(file.path(tmp.dir, 'defaults'),
                project.name)
  }
  else {
    file.copy(system.file('defaults_mini', package = 'ProjectTemplate'),
              file.path(tmp.dir),
              recursive = TRUE)

    file.rename(file.path(tmp.dir, 'defaults_mini'),
                project.name)
  }
  
  unlink(tmp.dir, recursive = TRUE)
}
