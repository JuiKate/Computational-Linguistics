# 
# HOW TO RUN: 
# $ source generate-data.sh ./wsj_00/wsj_0001.mrg



javac -cp "commons-lang3-3.1.jar:." normalize.java

#   public static final String DEFAULT_TSURGEON_FILE = "edu/stanford/nlp/models/upos/ENUniversalPOS.tsurgeon";
split=$1
# for split in ${splits[@]}; do
  echo "create Stanford dependencies for split "$split" ..."
  java -cp my-stanford-parser6.jar \
    -Xmx2g \
    edu.stanford.nlp.trees.EnglishGrammaticalStructure \
    -treeFile $split \
    -conllx -basic -makeCopulaHead -keepPunct > $split-stanford-raw.conll

  echo "normalizing "$split" ..."
  java -cp "commons-lang3-3.1.jar:." \
    normalize $split-stanford-raw.conll ENGLISH-fine-to-universal.full.map \
    > $split.conll

  # rm -f $split-tmp.mrg $split-stanford-raw.conll
# done

rm normalize.class
