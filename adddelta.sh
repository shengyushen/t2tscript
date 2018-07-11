sed -e 's/pyc:/py:/' $1|awk -f $(dirname "$0")/adddelta.awk 
