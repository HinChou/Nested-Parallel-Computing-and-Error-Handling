library(doParallel)

# Create a user-built function
Fun <- function()
{
  "..."
}

# Create cluster with desired number of cores, in this example is 8
cluster <- makeCluster(8)

# Register cluster
registerDoParallel(cluster)

# Returns an object, a list by default. This can be changed through the ".combine" option
# For nested parallel, you have to load "foreach" package into each parrelel worker(core)
result <- foreach(i = "...", .combine = "...", .packages = "foreach") %dopar{
  foreach(j = "...") %do% {
    tryCatch(Fun(),
             # Try warning when try Fun(), sometimes should delete this line, because there're some unimportant warnings
             warning = function(w){"warning-handler-code"},
             # Try error when try Fun()
             error = function(e){"error-handleer-code"}) 
  }
}

# Be sure to close the parallel backend, otherwise you can run into problems later
stopCluster(cluster)



