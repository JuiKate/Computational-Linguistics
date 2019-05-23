Stanford Parser for Spanish language 
-------------------------------------
Copyright (c) 2002-2017 The Board of Trustees of The Leland Stanford Junior
University. All Rights Reserved.

DESCRIPTION
We have taken Spanish language to work on. The objective of
this project is to make required changes in java files of Stanford
parser, build the project, create executable jar file, modifying
generate-data-corrected.sh file to use the updated jar file to
generate dependency structure for the given input Spanish penn-
treebank file.

USAGE
make sure that my-stanford-parser6.jar file is in the same directory as generate-data-corrected.sh file
Linux comand line usage:
if using any other spanish ptb file change the name of the input file to that.

	source generate-data-corrected.sh es.corrected.ptb

two output files will be generated showing dependency structure
1) es.corrected.ptb-stanford-raw.conll
2) es.corrected.ptb.conll
