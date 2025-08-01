#Use cairo-based PNG output
png("cv_error_plot.png", width = 800, height = 600, type = "cairo")

#Data
k_values <- c(2, 3, 4, 5, 6)
cv_errors <- c(0.32377, 0.33078, 0.33424, 0.334462, 0.35438)

#Plot
plot(k_values, cv_errors, type = "b", pch = 19, col = "blue",
     xlab = "Number of Ancestral Populations (K)",
     ylab = "Cross-validation Error",
     main = "ADMIXTURE Cross-validation Error vs K")
grid()

#Close the graphics device
dev.off()
