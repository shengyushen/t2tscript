import tensorflow as tf
import sys
from google.protobuf import text_format

with open(sys.argv[1]) as f:
  txt=f.read()

graph_def=text_format.Parse(txt,tf.GraphDef())

execfile('p2.py')


