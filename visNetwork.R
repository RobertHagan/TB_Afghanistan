#visNetwork
#https://plus.google.com/u/0/communities/117681470673972651781?cfem=1

#http://dataknowledge.github.io/visNetwork/
#devtools::install_github("DataKnowledge/visNetwork")
#visNetwork
#visNetwork is a R package for network visualization,
#using vis.js javascript library (http://visjs.org/).
#All the remarks and bugs returns are welcome on
#github : https://github.com/DataKnowledge/visNetwork.

#Installation
#Package is actually only available on github. You can install it with :
  
#  devtools::install_github("DataKnowledge/visNetwork")



require(visNetwork, quietly = TRUE)
# minimal example
#nodes <- data.frame(id = 1:3)
nodes <- data.frame(id = 1: 6)
#edges <- data.frame(from = c(1,2), to = c(1,3))
edges <- data.frame(from = c(1,2,3,4), to = c(1,3,4,6))
visNetwork(nodes, edges, width = "100%")
#
#More variables
#You can add informations and customize network simply using more variables
#on nodes and edges data.frames. For example :
  
#  label column : add labels on nodes / edges
#value column : control size on nodes / edges
#title column : add tooltip on nodes / edges (html, or character)
#group column : Only for nodes. Add nodes groups.
#…
nb <- 10
nodes <- data.frame(id = 1:nb, label = paste("Label", 1:nb),
                    group = sample(LETTERS[1:3], nb, replace = TRUE), value = 1:nb,
                    title = paste0("<p>", 1:nb,"<br>Tooltip !</p>"), stringsAsFactors = FALSE)

edges <- data.frame(from = trunc(runif(nb)*(nb-1))+1,
                    to = trunc(runif(nb)*(nb-1))+1,
                    value = rnorm(nb, 10), label = paste("Edge", 1:nb),
                    title = paste0("<p>", 1:nb,"<br>Edge Tooltip !</p>"))

visNetwork(nodes, edges, width = "100%")

#Nodes / edges options
#Several global options are available for nodes and edges using
#visNodes and visEdges.

# change shape and color of nodes
# and style of edges
nodes <- data.frame(id = 1:3)
edges <- data.frame(from = c(1,2), to = c(3,3))
visNetwork(nodes, edges) %>% 
  visNodes(shape = "square", color = "darkblue") %>%
  visEdges(style ="dash-line")

#Groups options
#You can use options per group using visGroups.

nodes <- data.frame(id = 1:5,  
                    group = sample(c("A", "B"), 5, replace = TRUE))
edges <- data.frame(from = c(2,5,3), to = c(1,2,4))

visNetwork(nodes, edges, width = "100%") %>%
  visGroups(groupname = "A", color = "red", shape = "database") %>%
  visGroups(groupname = "B", color = "yellow", shape = "label")

#Network Options
#A lot of configuration options are available in visOptions :
  
#  Highlight nearest
#Highlight nearest nodes and edges clicking on a node :
  
visNetwork(nodes, edges, width = "100%") %>% visOptions(highlightNearest = TRUE)

#Add legend on groups
visNetwork(nodes, edges, width = "100%",  legend = TRUE)


#Select by node id
visNetwork(nodes, edges, width = "100%") %>% visOptions(highlightNearest = TRUE, nodesIdSelection = TRUE)

#Directed Network
visNetwork(nodes, edges, width = "100%") %>% visEdges(style = "arrow")

#Custom navigation
#vis.js propose some navigation tools :
  
 visNetwork(nodes, edges, width = "100%") %>% visOptions(navigation = TRUE)

# Data Manipulation
# And some data manipulation tools :
   
visNetwork(nodes, edges, width = "100%") %>% visOptions(dataManipulation = TRUE)

#Hierarchical Layout
#You can use and control hierarchical layout with visHierarchicalLayout :
  
  visNetwork(nodes, edges, width = "100%") %>% visEdges(style = "arrow") %>% 
  visHierarchicalLayout(layout = "direction") 

  visNetwork(nodes, edges, width = "100%") %>% visEdges(style = "arrow") %>% 
    visHierarchicalLayout(direction = "LR", layout = "direction")
  
#  Freeze network
  visNetwork(nodes, edges, width = "100%") %>% visOptions(dragNetwork = FALSE, dragNodes = FALSE)
 
 # Clustering
  nodes <- data.frame(id = 1:10)
  edges <- data.frame(from = round(runif(12)*10), to = round(runif(12)*10))
  
  visNetwork(nodes, edges, width = "100%") %>%
    visClustering(initialMaxNodes = 5, nodeScaling = list(width = 50, height = 50, radius = 50))
  
 # Additional features
#  Export
  network <- visNetwork(nodes, edges, width = "100%")
  htmlwidgets::saveWidget(network, "network.html")
 # Use DOT language data
  visNetwork(dot = 'dinetwork {1 -> 1 -> 2; 2 -> 3; 2 -- 4; 2 -> 1 }', width = "100%")
 
#  Use gephi json export file
  # don't run here
  visNetwork(gephi = 'WorldCup2014.json')
#  Physics, tooltip, events, shiny, …
 # You can also control :
#    
#    physics of network : visPhysics
#  tootlip : visTooltips
#  events : visEvents
 # And use in shiny apps with visNetworkOutput and renderVisNetwork   
  
  