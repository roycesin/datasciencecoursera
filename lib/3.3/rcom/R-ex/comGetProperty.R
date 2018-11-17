### Name: comGetProperty
### Title: Read One of a COM Object's Properties
### Aliases: comGetProperty
### Keywords: programming interface

### ** Examples

# start up excel
## Not run: x<-comCreateObject("Excel.Application")

# retrieve the "Visible" property
## Not run: v <- comGetProperty(x,"Visible")

# add a new workbook to Excel and gain access to the first worksheet
## Not run: newwb <- comInvoke(comGetProperty(x,"Workbooks"),"Add")
## Not run: ws <- comGetProperty(newwb,"Worksheets",1)

# get a specific range
## Not run: r <- comGetProperty(ws,"Range","A1","B4")

# do something now...



