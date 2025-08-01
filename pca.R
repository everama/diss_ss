#Load PCA results
pca <- read.table("pca.evec", header = FALSE, fill = TRUE)
colnames(pca) <- c("IID", paste0("PC", 1:(ncol(pca) - 2)), "POP")

#Define colors for the populations
pop_colors <- c("Lebanon_IA" = "forestgreen", "Druze" = "blue", "Bedouin" = "red", "Palestinian" = "yellow", "Basque" = "grey", "French" = "purple")

#Assign colors based on population
col_vector <- pop_colors[pca$POP]
col_vector[is.na(col_vector)] <- "black"  # Default for any other groups

#Plot PC1 vs PC2 colored by population
plot(
  pca$PC1, pca$PC2,
  col = col_vector,
  pch = 16,
  xlab = "PC1",
  ylab = "PC2",
  main = "PCA (without Projection)"
)

#Add legend
legend(
  "topright",
  legend = names(pop_colors),
  col = pop_colors,
  pch = 16,
  title = "Population"
)
