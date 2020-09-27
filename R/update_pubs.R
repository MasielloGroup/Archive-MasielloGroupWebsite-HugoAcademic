# Objective: 
#   - Process bibtex file
#   - Compare to existing publications folder 
#   - Replace the index.md files but if there is a feature image, keep this
#   - Do this in the R/output folder but then make it drag and dropable into the content > publication folder

bibfile <- "R/website.09.26.20.bib"
out_fold   <- "R/output"

# Run bibtex_2academic.R script with output going to R/output
update_pubs <- function(bibfile, outfold) {
  require(fs)
  require(purrr)
  require(magrittr)

  #process bibtex file and write output to outfold
  source(path("R","bibtex_2academic.R"))
  bibtex_2academic(bibfile  = bibfile, 
                   outfold   = out_fold, 
                   abstract  = FALSE)
  
  #scan current content/publication folder and copy over any featured.jpg files
  pub_path <- path("content", "publication")
  pub_directories <- dir_ls(pub_path, type = "directory")

  #which publication folders have featured.jpg inside
  has_featured <- function(x) {
    contents <- dir_ls(x)
    if(any(stringr::str_detect(contents, "featured.jpg"))){x}
  }
  
  # list of all directory paths with featured.jpg
  dir_w_feature <- map(pub_directories, has_featured) %>% unlist() %>% str_remove(paste0(pub_path,"/"))
  
  # copy featured.jpg from content/publications to outfold
  file_copy(path=path(pub_path,dir_w_feature,"featured.jpg"), new_path=path(outfold,dir_w_feature,"featured.jpg"))
}

update_pubs(bibfile, out_fold)

# do you want to copy over to the content/publications folder?
dir_copy(out_fold, path("content/publication"), overwrite = TRUE)
