workflow <- function(commit_message = "updated content"){
  rmarkdown::render_site()
  gert::git_add(".")
  gert::git_commit_all(commit_message)
  gert::git_push()
}


