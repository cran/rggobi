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


