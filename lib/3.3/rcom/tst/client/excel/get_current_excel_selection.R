# get the current Excel's selection
library(rcom)
excel<-com.object.get("Excel.Application");
sel<-com.property.get(excel,"Selection");
print(com.property.get(sel,"Value"));
