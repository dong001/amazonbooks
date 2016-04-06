 #!/bin/bash

 java -cp .:saxon9.jar net.sf.saxon.Query $1 !omit-xml-declaration=yes
