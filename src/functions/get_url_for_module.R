source(here::here("src", "_common.R"))

get_url_for_module <- function(
    file_base = here::here("docs", "modules"),
    url_base  = paste(the_course_site, "modules/", sep = "/"),
    file_name = "manipulating_data_selecting_filtering_mutating",
    file_ext  = "\\.html$",
    recursive = TRUE
) {
  x = paste0(url_base,
             # find the actual file with this names
             list.files(file_base, recursive = recursive) |>
               stringr::str_subset(file_ext) |> stringr::str_subset(file_name)
  )
  x = gsub(" ", "%", x) # add % for url
  if (length(x) > 1) { message("Too many links. Edit <file_name>.") }
  return(x)
}

# get_url_for_module(file_name = "functions_and_scripts")
get_url_for_module_setup <- function(
    file_base = here::here("docs", "modules"),
    url_base  = paste(the_course_site, "modules_setup/", sep = "/"),
    file_name = "manipulating_data_selecting_filtering_mutating",
    file_ext  = "\\.html$",
    recursive = TRUE
) {
  x = paste0(url_base,
             # find the actual file with this names
             list.files(file_base, recursive = recursive) |>
               stringr::str_subset(file_ext) |>
               stringr::str_subset(file_name)
  )
  x = gsub(" ", "%", x) # add % for url

  if (length(x) > 1) { message("Too many links. Edit <file_name>.") }
  return(x)
}


#get_url_for_module(file_base = here::here("examples"),
#                         file_name = "example-project-management-and-git",
#                         file_ext = ".pdf"
#                         )
