### * <HEADER>
###
attach(NULL, name = "CheckExEnv")
assign(".CheckExEnv", as.environment(2), pos = length(search())) # base
## add some hooks to label plot pages for base and grid graphics
setHook("plot.new", ".newplot.hook")
setHook("persp", ".newplot.hook")
setHook("grid.newpage", ".gridplot.hook")

assign("cleanEx",
       function(env = .GlobalEnv) {
	   rm(list = ls(envir = env, all.names = TRUE), envir = env)
           RNGkind("default", "default")
	   set.seed(1)
   	   options(warn = 1)
	   delayedAssign("T", stop("T used instead of TRUE"),
		  assign.env = .CheckExEnv)
	   delayedAssign("F", stop("F used instead of FALSE"),
		  assign.env = .CheckExEnv)
	   sch <- search()
	   newitems <- sch[! sch %in% .oldSearch]
	   for(item in rev(newitems))
               eval(substitute(detach(item), list(item=item)))
	   missitems <- .oldSearch[! .oldSearch %in% sch]
	   if(length(missitems))
	       warning("items ", paste(missitems, collapse=", "),
		       " have been removed from the search path")
       },
       env = .CheckExEnv)
assign("..nameEx", "__{must remake R-ex/*.R}__", env = .CheckExEnv) # for now
assign("ptime", proc.time(), env = .CheckExEnv)
grDevices::postscript("rggobi-Ex.ps")
assign("par.postscript", graphics::par(no.readonly = TRUE), env = .CheckExEnv)
options(contrasts = c(unordered = "contr.treatment", ordered = "contr.poly"))
options(warn = 1)    
library('rggobi')

assign(".oldSearch", search(), env = .CheckExEnv)
assign(".oldNS", loadedNamespaces(), env = .CheckExEnv)
cleanEx(); ..nameEx <- "GGobiCall-n1"

### * GGobiCall-n1

flush(stderr()); flush(stdout())

### Name: .GGobiCall
### Title: Wrappers for calling C routines in the R-ggobi library.
### Aliases: .GGobiCall .GGobiC
### Keywords: dynamic internal

### ** Examples



cleanEx(); ..nameEx <- "addVariable-ggobiDataset-u7"

### * addVariable-ggobiDataset-u7

flush(stderr()); flush(stdout())

### Name: addVariable.ggobiDataset
### Title: Add variable
### Aliases: addVariable.ggobiDataset addVariable
### Keywords: manip

### ** Examples



cleanEx(); ..nameEx <- "as-data-frame-ggobiDataset-8q"

### * as-data-frame-ggobiDataset-8q

flush(stderr()); flush(stdout())

### Name: "as.data.frame.ggobiDataset"
### Title: Conversion methods
### Aliases: as.data.frame.ggobiDataset as.matrix.ggobiDataset
### Keywords: manip internal

### ** Examples



cleanEx(); ..nameEx <- "clean-ggobi-bw"

### * clean-ggobi-bw

flush(stderr()); flush(stdout())

### Name: clean.ggobi
### Title: Clean ggobi
### Aliases: clean.ggobi
### Keywords: dynamic internal

### ** Examples



cleanEx(); ..nameEx <- "close-ggobi-gk"

### * close-ggobi-gk

flush(stderr()); flush(stdout())

### Name: close.ggobi
### Title: Close GGobi instance
### Aliases: close.ggobi
### Keywords: dynamic

### ** Examples
g1 <- ggobi(mtcars)
g2 <- ggobi(mtcars)
close(g2)
close(ggobi_get())


cleanEx(); ..nameEx <- "colorscheme--b2"

### * colorscheme--b2

flush(stderr()); flush(stdout())

### Name: "colorscheme<-"
### Title: Set active colour scheme.
### Aliases: colorscheme<-
### Keywords: color

### ** Examples
g <- ggobi(mtcars)
colorscheme(g) <- "Set1 8"
colorscheme(g) <- 1


cleanEx(); ..nameEx <- "colorscheme-6n"

### * colorscheme-6n

flush(stderr()); flush(stdout())

### Name: colorscheme
### Title: Get active colour scheme
### Aliases: colorscheme
### Keywords: color

### ** Examples
g <- ggobi(mtcars)
colorscheme(g)


cleanEx(); ..nameEx <- "connecting-edges-cn"

### * connecting-edges-cn

flush(stderr()); flush(stdout())

### Name: connecting_edges
### Title: Get connecting edges
### Aliases: connecting_edges
### Keywords: manip

### ** Examples



cleanEx(); ..nameEx <- "create-time-edges-for-unit-fp"

### * create-time-edges-for-unit-fp

flush(stderr()); flush(stdout())

### Name: create_time_edges_for_unit
### Title: Create time edges for a unit
### Aliases: create_time_edges_for_unit
### Keywords: dynamic internal

### ** Examples



cleanEx(); ..nameEx <- "create-time-edges-ha"

### * create-time-edges-ha

flush(stderr()); flush(stdout())

### Name: create_time_edges
### Title: Create time edges
### Aliases: create_time_edges
### Keywords: dynamic internal

### ** Examples



cleanEx(); ..nameEx <- "dataset-up"

### * dataset-up

flush(stderr()); flush(stdout())

### Name: dataset
### Title: Get ggobi dataset.
### Aliases: dataset
### Keywords: manip internal

### ** Examples



cleanEx(); ..nameEx <- "dim-ggobiDataset-yy"

### * dim-ggobiDataset-yy

flush(stderr()); flush(stdout())

### Name: dim.ggobiDataset
### Title: ggobiDataset dimensions
### Aliases: dim.ggobiDataset
### Keywords: attribute internal

### ** Examples



cleanEx(); ..nameEx <- "dimnames-ggobiDataset-1n"

### * dimnames-ggobiDataset-1n

flush(stderr()); flush(stdout())

### Name: dimnames.ggobiDataset
### Title: Get dimension names
### Aliases: dimnames.ggobiDataset
### Keywords: attribute internal

### ** Examples



cleanEx(); ..nameEx <- "edges--p8"

### * edges--p8

flush(stderr()); flush(stdout())

### Name: "edges<-"
### Title: Set edges
### Aliases: edges<-
### Keywords: manip

### ** Examples
cc<-cor(t(swiss),use="p", method="s") 
ccd<-sqrt(2*(1-cc)) 
a <- which(lower.tri(ccd), arr.ind=TRUE)
src <- row.names(swiss)[a[,2]]
dest <- row.names(swiss)[a[,1]] 
weight <- as.vector(as.dist(ccd))
gg <- ggobi(swiss)
gg$cor <- data.frame(weight)
edges(gg$cor) <- cbind(src, dest)
edges(gg$cor)
edges(gg$cor) <- NULL


cleanEx(); ..nameEx <- "edges-lk"

### * edges-lk

flush(stderr()); flush(stdout())

### Name: edges
### Title: Get edges
### Aliases: edges
### Keywords: manip

### ** Examples



cleanEx(); ..nameEx <- "excluded---ggobiDataset-gu"

### * excluded---ggobiDataset-gu

flush(stderr()); flush(stdout())

### Name: "excluded<-.ggobiDataset"
### Title: Set excluded status
### Aliases: excluded<-.ggobiDataset excluded<-
### Keywords: dynamic

### ** Examples



cleanEx(); ..nameEx <- "excluded-ggobiDataset-3e"

### * excluded-ggobiDataset-3e

flush(stderr()); flush(stdout())

### Name: excluded.ggobiDataset
### Title: Get excluded status
### Aliases: excluded.ggobiDataset excluded
### Keywords: dynamic

### ** Examples



cleanEx(); ..nameEx <- "get--ggobiDataset-1f"

### * get--ggobiDataset-1f

flush(stderr()); flush(stdout())

### Name: "[.ggobiDataset"
### Title: Subsettting
### Aliases: [.ggobiDataset [[.ggobiDataset $.ggobiDataset
### Keywords: manip

### ** Examples
g <- ggobi(mtcars)
x <- g$mtcars
x[1:5, 1:5]
x[[1]]
x$cyl


cleanEx(); ..nameEx <- "ggobi-8s"

### * ggobi-8s

flush(stderr()); flush(stdout())

### Name: "$.ggobi"
### Title: Get ggobi data.
### Aliases: $.ggobi [.ggobi
### Keywords: manip

### ** Examples
g <- ggobi(ChickWeight)
g["cars"] <- mtcars
g[1:2]
g["ChickWeight"]
g["cars"]
g$cars


cleanEx(); ..nameEx <- "ggobi-check-structs-qq"

### * ggobi-check-structs-qq

flush(stderr()); flush(stdout())

### Name: ggobi_check_structs
### Title: Check structs
### Aliases: ggobi_check_structs
### Keywords: programming internal

### ** Examples



cleanEx(); ..nameEx <- "ggobi-count-bo"

### * ggobi-count-bo

flush(stderr()); flush(stdout())

### Name: ggobi_count
### Title: Get number of GGobis
### Aliases: ggobi_count
### Keywords: dynamic

### ** Examples
ggobi_count()


cleanEx(); ..nameEx <- "ggobi-data-set-variables-ad"

### * ggobi-data-set-variables-ad

flush(stderr()); flush(stdout())

### Name: ggobi_data_set_variables
### Title: Set variable values
### Aliases: ggobi_data_set_variables
### Keywords: manip internal

### ** Examples



cleanEx(); ..nameEx <- "ggobi-find-file-bc"

### * ggobi-find-file-bc

flush(stderr()); flush(stdout())

### Name: ggobi.find.file
### Title: Find GGobi file.
### Aliases: ggobi.find.file
### Keywords: dynamic internal

### ** Examples
ggobi.find.file("data","tips.xml")


cleanEx(); ..nameEx <- "ggobi-g8"

### * ggobi-g8

flush(stderr()); flush(stdout())

### Name: ggobi
### Title: New ggobi
### Aliases: ggobi
### Keywords: dynamic

### ** Examples
ggobi(ggobi.find.file("data", "flea.csv"))
ggobi(ggobi.find.file("data", "flea.xml"))
ggobi(mtcars)
mtcarsg <- ggobi_get()$mtcars
glyph_colour(mtcarsg)
glyph_colour(mtcarsg) <- ifelse(mtcarsg$cyl < 4, 1, 2)
glyph_size(mtcarsg) <- mtcarsg$cyl


cleanEx(); ..nameEx <- "ggobi-get-2m"

### * ggobi-get-2m

flush(stderr()); flush(stdout())

### Name: ggobi_get
### Title: Get GGobi
### Aliases: ggobi_get
### Keywords: dynamic

### ** Examples
ggobi(mtcars)
ggobi(Nile)
ggobi_get(1)
ggobi_get(1:2)


cleanEx(); ..nameEx <- "ggobi-longitudinal-2e"

### * ggobi-longitudinal-2e

flush(stderr()); flush(stdout())

### Name: ggobi_longitudinal
### Title: Create longitudinal dataset.
### Aliases: ggobi_longitudinal
### Keywords: dynamic

### ** Examples
data(Oxboys, package="nlme")
ggobi_longitudinal(Oxboys, "Occasion", "Subject")


cleanEx(); ..nameEx <- "ggobi-set-data-file-be"

### * ggobi-set-data-file-be

flush(stderr()); flush(stdout())

### Name: ggobi_set_data_file
### Title: Set data file.
### Aliases: ggobi_set_data_file
### Keywords: manip internal

### ** Examples



cleanEx(); ..nameEx <- "ggobi-set-data-frame-k0"

### * ggobi-set-data-frame-k0

flush(stderr()); flush(stdout())

### Name: ggobi_set_data_frame
### Title: Set data frame.
### Aliases: ggobi_set_data_frame
### Keywords: manip internal

### ** Examples



cleanEx(); ..nameEx <- "ggobi-symbol-34"

### * ggobi-symbol-34

flush(stderr()); flush(stdout())

### Name: .ggobi.symbol
### Title: Ggobi symbol
### Aliases: .ggobi.symbol
### Keywords: dynamic internal

### ** Examples



cleanEx(); ..nameEx <- "ggobi-version-ao"

### * ggobi-version-ao

flush(stderr()); flush(stdout())

### Name: ggobi_version
### Title: Get version
### Aliases: ggobi_version
### Keywords: dynamic

### ** Examples
ggobi_version()


cleanEx(); ..nameEx <- "glyph-colour---ggobiDataset-nv"

### * glyph-colour---ggobiDataset-nv

flush(stderr()); flush(stdout())

### Name: "glyph_colour<-.ggobiDataset"
### Title: Set glyph colour
### Aliases: glyph_colour<-.ggobiDataset glyph_colour<- glyph_color<-
### Keywords: dynamic

### ** Examples



cleanEx(); ..nameEx <- "glyph-colour-ggobiDataset-bd"

### * glyph-colour-ggobiDataset-bd

flush(stderr()); flush(stdout())

### Name: glyph_colour.ggobiDataset
### Title: Get glyph colour
### Aliases: glyph_colour.ggobiDataset glyph_colour glyph_color
### Keywords: dynamic

### ** Examples



cleanEx(); ..nameEx <- "glyph-size---ggobiDataset-9g"

### * glyph-size---ggobiDataset-9g

flush(stderr()); flush(stdout())

### Name: "glyph_size<-.ggobiDataset"
### Title: Set glyph size
### Aliases: glyph_size<-.ggobiDataset glyph_size<-
### Keywords: dynamic

### ** Examples



cleanEx(); ..nameEx <- "glyph-size-ggobiDataset-kk"

### * glyph-size-ggobiDataset-kk

flush(stderr()); flush(stdout())

### Name: glyph_size.ggobiDataset
### Title: Get glyph size
### Aliases: glyph_size.ggobiDataset glyph_size
### Keywords: dynamic

### ** Examples



cleanEx(); ..nameEx <- "glyph-type---ggobiDataset-5b"

### * glyph-type---ggobiDataset-5b

flush(stderr()); flush(stdout())

### Name: "glyph_type<-.ggobiDataset"
### Title: Set glyph type
### Aliases: glyph_type<-.ggobiDataset glyph_type<-
### Keywords: dynamic

### ** Examples



cleanEx(); ..nameEx <- "glyph-type-ggobiDataset-21"

### * glyph-type-ggobiDataset-21

flush(stderr()); flush(stdout())

### Name: glyph_type.ggobiDataset
### Title: Get glyph type.
### Aliases: glyph_type.ggobiDataset glyph_type
### Keywords: dynamic

### ** Examples



cleanEx(); ..nameEx <- "ids---ggobiDataset-gv"

### * ids---ggobiDataset-gv

flush(stderr()); flush(stdout())

### Name: "ids<-.ggobiDataset"
### Title: Set row ids
### Aliases: ids<-.ggobiDataset ids<-
### Keywords: manip

### ** Examples



cleanEx(); ..nameEx <- "ids-ggobiDataset-7d"

### * ids-ggobiDataset-7d

flush(stderr()); flush(stdout())

### Name: ids.ggobiDataset
### Title: Row ids
### Aliases: ids.ggobiDataset ids
### Keywords: manip

### ** Examples



cleanEx(); ..nameEx <- "mapGlyphType-5p"

### * mapGlyphType-5p

flush(stderr()); flush(stdout())

### Name: mapGlyphType
### Title: Map glyph type.
### Aliases: mapGlyphType
### Keywords: dynamic internal

### ** Examples



cleanEx(); ..nameEx <- "names---ggobiDataset-1c"

### * names---ggobiDataset-1c

flush(stderr()); flush(stdout())

### Name: "names<-.ggobiDataset"
### Title: Set column names
### Aliases: names<-.ggobiDataset
### Keywords: attribute internal

### ** Examples



cleanEx(); ..nameEx <- "names-ggobi-3e"

### * names-ggobi-3e

flush(stderr()); flush(stdout())

### Name: names.ggobi
### Title: GGobi names
### Aliases: names.ggobi
### Keywords: dynamic

### ** Examples
g <- ggobi(mtcars)
names(g)


cleanEx(); ..nameEx <- "names-ggobiDataset-va"

### * names-ggobiDataset-va

flush(stderr()); flush(stdout())

### Name: names.ggobiDataset
### Title: ggobiDataset column names
### Aliases: names.ggobiDataset
### Keywords: attribute internal

### ** Examples



cleanEx(); ..nameEx <- "ncol-ggobiDataset-32"

### * ncol-ggobiDataset-32

flush(stderr()); flush(stdout())

### Name: ncol.ggobiDataset
### Title: ggobiDataset columns
### Aliases: ncol.ggobiDataset
### Keywords: attribute internal

### ** Examples



cleanEx(); ..nameEx <- "nrow-ggobiDataset-zq"

### * nrow-ggobiDataset-zq

flush(stderr()); flush(stdout())

### Name: nrow.ggobiDataset
### Title: ggobiDataset rows
### Aliases: nrow.ggobiDataset
### Keywords: attribute internal

### ** Examples



cleanEx(); ..nameEx <- "print-ggobi-eg"

### * print-ggobi-eg

flush(stderr()); flush(stdout())

### Name: print.ggobi
### Title: Print ggobi
### Aliases: print.ggobi
### Keywords: dynamic internal

### ** Examples



cleanEx(); ..nameEx <- "print-ggobiDataset-37"

### * print-ggobiDataset-37

flush(stderr()); flush(stdout())

### Name: print.ggobiDataset
### Title: Print ggobiDataset
### Aliases: print.ggobiDataset
### Keywords: attribute internal

### ** Examples



cleanEx(); ..nameEx <- "rownames---ggobiDataset-f9"

### * rownames---ggobiDataset-f9

flush(stderr()); flush(stdout())

### Name: "rownames<-.ggobiDataset"
### Title: Set row names
### Aliases: rownames<-.ggobiDataset
### Keywords: attribute internal

### ** Examples



cleanEx(); ..nameEx <- "rownames-ggobiDataset-ex"

### * rownames-ggobiDataset-ex

flush(stderr()); flush(stdout())

### Name: rownames.ggobiDataset
### Title: Get row names
### Aliases: rownames.ggobiDataset
### Keywords: attribute internal

### ** Examples



cleanEx(); ..nameEx <- "selected-ggobiDataset-dj"

### * selected-ggobiDataset-dj

flush(stderr()); flush(stdout())

### Name: selected.ggobiDataset
### Title: Get selection status
### Aliases: selected.ggobiDataset selected
### Keywords: dynamic

### ** Examples



cleanEx(); ..nameEx <- "set--ggobi-7u"

### * set--ggobi-7u

flush(stderr()); flush(stdout())

### Name: "[<-.ggobi"
### Title: [<-.ggobi
### Aliases: [<-.ggobi $<-.ggobi
### Keywords: manip

### ** Examples
g <- ggobi()
g["a"] <- mtcars
g$b <- mtcars


cleanEx(); ..nameEx <- "set--ggobiDataset-av"

### * set--ggobiDataset-av

flush(stderr()); flush(stdout())

### Name: "[<-.ggobiDataset"
### Title: Assignments for ggobi datasets
### Aliases: [<-.ggobiDataset
### Keywords: manip internal

### ** Examples
g <- ggobi(mtcars)
x <- g["mtcars"]
x[1:5, 1:5]
x[1:5, 1] <- 1:5
x[1:5, 1:5]


cleanEx(); ..nameEx <- "shadowed---ggobiDataset-04"

### * shadowed---ggobiDataset-04

flush(stderr()); flush(stdout())

### Name: "shadowed<-.ggobiDataset"
### Title: Set shadowed status
### Aliases: shadowed<-.ggobiDataset shadowed<-
### Keywords: dynamic

### ** Examples



cleanEx(); ..nameEx <- "shadowed-ggobiDataset-ee"

### * shadowed-ggobiDataset-ee

flush(stderr()); flush(stdout())

### Name: shadowed.ggobiDataset
### Title: Get shadowed status
### Aliases: shadowed.ggobiDataset shadowed
### Keywords: dynamic

### ** Examples



cleanEx(); ..nameEx <- "summary-ggobi-b6"

### * summary-ggobi-b6

flush(stderr()); flush(stdout())

### Name: summary.ggobi
### Title: GGobi summary
### Aliases: summary.ggobi
### Keywords: dynamic

### ** Examples
g <- ggobi(mtcars)
summary(g)


cleanEx(); ..nameEx <- "summary-ggobiDataset-2o"

### * summary-ggobiDataset-2o

flush(stderr()); flush(stdout())

### Name: summary.ggobiDataset
### Title: Summarise ggobiDataset.
### Aliases: summary.ggobiDataset
### Keywords: attribute

### ** Examples



cleanEx(); ..nameEx <- "valid-ggobi-mk"

### * valid-ggobi-mk

flush(stderr()); flush(stdout())

### Name: valid_ggobi
### Title: Determines whether a reference to an internal ggobi object is
###   valid
### Aliases: valid_ggobi
### Keywords: dynamic internal

### ** Examples
g <- ggobi(mtcars)
valid_ggobi(g)
close(g)
valid_ggobi(g) 


cleanEx(); ..nameEx <- "variable-index-h9"

### * variable-index-h9

flush(stderr()); flush(stdout())

### Name: variable_index
### Title: Variable index
### Aliases: variable_index
### Keywords: attribute internal

### ** Examples



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", env = .CheckExEnv),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
