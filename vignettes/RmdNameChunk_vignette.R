## ---- eval=FALSE---------------------------------------------------------
## devtools::install_github("erikerhardt/RmdNameChunk")

## ------------------------------------------------------------------------
library(RmdNameChunk)
rmd_name_chunks(
    fn_in             = "test_in.Rmd"
  , fn_out            = "test_out.Rmd"
  , prefix_chunk_name = "chunk-"
  )

