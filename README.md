# RmdNameChunk
Read an Rmd rmarkdown file and apply enumerated code chunks

# Installing from source

Set the appropriate path and run this command:
```{r, eval=FALSE}
devtools::install_github("erikerhardt/RmdNameChunk")
```

Read an Rmd file, update existing prefixed code chunks, and renumber.
```{r}
library(RmdNameChunk)
rmd_name_chunks(
    fn_in             = "test_in.Rmd"
  , fn_out            = "test_out.Rmd"
  , prefix_chunk_name = "chunk-"
  )
```
Review the input and output files to see how the chunk header names have been
updated.
