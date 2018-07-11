sed -e 's/pyc:/py:/' $1|awk -f adddelta.awk 
