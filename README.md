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

Below is an example of the two Rmd files in the vignette.
test_in.Rmd was read in and test_out.Rmd was created.  The chunk headers are shown below from each file.

```
test_in.Rmd
 8 : ```{r setup, include=FALSE}
22 : ```{R cars}
28 : ```{r}
32 : ```{  R  }
36 : ```{r, echo=FALSE}
40 : ```{   R, eval=FALSE}
44 : ```{r   , eval=FALSE}
48 : ```{r chunk-2, eval=FALSE}
52 : ```{r chunk-XXX  , eval=FALSE}
56 : ```{R chunk-XXX2 , eval=FALSE}
60 : ```{R chunk-XXX3 , eval=FALSE}
64 : ```{r chunk-XXX4 , eval=FALSE}
68 : ```{r chunk-XXX5 , eval=FALSE}
72 : ```{r chunk-XXX6 , eval=FALSE}
81 : ```{r pressure, echo=FALSE}

# These code chunk headers were changed to those below:

test_out.Rmd
 8 : ```{r setup, include=FALSE}
22 : ```{r cars}
28 : ```{r chunk-01}
32 : ```{r chunk-02}
36 : ```{r chunk-03, echo=FALSE}
40 : ```{r chunk-04, eval=FALSE}
44 : ```{r chunk-05, eval=FALSE}
48 : ```{r chunk-06, eval=FALSE}
52 : ```{r chunk-07, eval=FALSE}
56 : ```{r chunk-08, eval=FALSE}
60 : ```{r chunk-09, eval=FALSE}
64 : ```{r chunk-10, eval=FALSE}
68 : ```{r chunk-11, eval=FALSE}
72 : ```{r chunk-12, eval=FALSE}
81 : ```{r pressure, echo=FALSE}
```
