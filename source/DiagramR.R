grViz("
digraph boxes_and_circles {
      
      # a 'graph' statement
      graph [overlap = true]
      
      # several 'node' statements
      node [shape = box,
      fontname = Helvetica]
      A; B; C; D; E; F
      
      node [shape = circle,
      fixedsize = true,
      width = 0.9] // sets as circles
      1; 2; 3; 4; 5; 6; 7; 8
      
      # several 'edge' statements
      A->1; B->2; B->3; B->4; C->A
      1->D; E->A; 2->4; 1->5; 1->F
      E->6; 4->6; 5->7; 6->7; 3->8
      }
      ")

grViz("
      digraph boxes_and_circles {
      
      # a 'graph' statement
      graph [overlap = true]
      
      # several 'node' statements
      node [shape = box,
      fontname = Helvetica,
      color = blue] // for the letter nodes, use box shapes
      A; B; C; D; E
      F [color = black]
      
      node [shape = circle,
      fixedsize = true,
      width = 0.9] // sets as circles
      1; 2; 3; 4; 5; 6; 7; 8
      
      # several 'edge' statements
      edge [color = gray] // this sets all edges to be gray (unless overridden)
      A->1; B->2                   // gray
      B->3 [color = red]           // red
      B->4                         // gray
      C->A [color = green]         // green
      1->D; E->A; 2->4; 1->5; 1->F // gray
      E->6; 4->6; 5->7; 6->7       // gray
      3->8 [color = blue]          // blue
      }
      ")
