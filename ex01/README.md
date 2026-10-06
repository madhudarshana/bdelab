# Ex 01 - Word Count using MapReduce

**Aim:** Count the frequency of each word in a text file using Hadoop MapReduce.

**How it works**
- Mapper: reads each line, splits into words, emits `(word, 1)`
- Reducer: adds up all the 1s for each word, emits `(word, total)`

**Run:** `bash run.sh` (Hadoop must be running)

**Input:** `hello world hello hadoop mapreduce hadoop world`

**Output:** see `output.txt`
