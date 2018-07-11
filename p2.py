for node in graph_def.node:
  #print('node {}'.format(node.name))
  #print(node.attr['_output_shapes'])
  if '_output_shapes' in node.attr.keys():
    for a in node.attr['_output_shapes'].list.shape:
      dimres=1
      for d in a.dim:
        dimres=dimres*(d.size)
      print node.name , dimres


