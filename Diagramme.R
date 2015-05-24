#http://www.buildingwidgets.com/blog/2015/5/22/week-20-vivagraphjs-in-diagrammer
devtools::install_github( "timelyportfolio/DiagrammeR@feature/vivagraphjs" )
## please see install step above

library( DiagrammeR )

## use example create_graph from DiagrammeR documentation
##   http://rich-iannone.github.io/DiagrammeR/graphs.html

###
# Create a graph
###

nodes <-
  create_nodes(nodes = LETTERS,
               type = "letter",
               shape = sample(c("circle", "rectangle"),
                              length(LETTERS),
                              replace = TRUE),
               fillcolor = sample(c("aqua", "gray80",
                                    "pink", "lightgreen",
                                    "azure", "yellow"),
                                  length(LETTERS),
                                  replace = TRUE))

edges <-
  create_edges(edge_from = sample(LETTERS, replace = TRUE),
               edge_to = sample(LETTERS, replace = TRUE),
               relationship = "letter_to_letter")


graph <-
  create_graph(nodes_df = nodes,
               edges_df = edges,
               graph_attrs = "layout = neato",
               node_attrs = c("fontname = Helvetica",
                              "style = filled"),
               edge_attrs = c("color = gray20",
                              "arrowsize = 0.5"))

vivagraph( nodes, edges )
#
library( DiagrammeR )
library( igraph )

# plot one of the graph.famous from igraph
vivagraph( graph.famous( "Franklin" ) )
vivagraph( graph.famous( "Franklin" ), layout = layout.circle )
vivagraph( graph.famous( "Dodecahedron" ), layout = layout.grid )
vivagraph( graph.famous( "Herschel" ), layout = layout.fruchterman.reingold )
#
#
library(DiagrammeR)
library(igraph)
library(pipeR)

#### use igraph example from documentation
actors <- data.frame(
  name=c("Alice", "Bob", "Cecil", "David", "Esmeralda")
  , age=c(48,33,45,34,21)
  , gender=c("F","M","F","M","F")
)
relations <- data.frame(
  from=c("Bob", "Cecil", "Cecil", "David", "David", "Esmeralda")
  , to=c("Alice", "Bob", "Alice", "Alice", "Bob", "Alice")
  , same.dept=c(FALSE,FALSE,TRUE,FALSE,FALSE,TRUE)
  , friendship=c(4,5,5,2,1,1), advice=c(4,5,5,4,2,3)
)
g <- graph.data.frame(relations, directed=TRUE, vertices=actors)
## use igraph layout for positions
g_layout <- layout.grid(g)

## now plot with DiagrammeR using igraph layout positions
##  but use graphviz splines and overlap handling
g %>>%
  get.data.frame( what = "both" ) %>>%
  (
    # DiagrammeR create_graph helper function
    create_graph(
      data.frame(
        nodes = rownames(.$vertices)
        ,.$vertices
        ,x = g_layout[,1]  # define our x from the igraph layout
        ,y = g_layout[,2]  # define our y from the igraph layout
      )
      ,.$edges
      ,graph_attrs = 'splines="true" overlap = "scale" label = "igraph + grViz"'
    )
  ) %>>%
  (
    grViz( .$dot_code, engine="neato" )
  )
#Let’s compare to the default igraph plot.

plot( g, layout = g_layout)
