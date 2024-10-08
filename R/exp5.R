# Install and load the necessary packages
install.packages("arules")
install.packages("arulesViz")
install.packages("arules")
install.packages("RColorBrewer")

# Load the installed packages
library(arules)
library(arulesViz)
library(RColorBrewer)

# Load the "Groceries" dataset
data("Groceries")

# Now, you can proceed with your association rule mining and visualization code
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.2))
inspect(rules[1:10])
arules::itemFrequencyPlot(Groceries, topN = 20, 
                          col = brewer.pal(8, 'Pastel2'),
                          main = 'Relative Item Frequency Plot',
                          type = "relative",
                          ylab = "Item Frequency (Relative)",
xlab = "A priori")
