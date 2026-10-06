# Ex 02 - MapReduce Program to Analyse a Weather Dataset

**Aim:** Find the maximum temperature recorded for each year using MapReduce.

**How it works**
- Mapper: reads each line, takes the year (first 4 chars) and temperature (last 2 chars), emits `(year, temp)`
- Reducer: for each year, finds the maximum temperature

**Run:** `bash run.sh`

**Output:** see `output.txt`

Note: temperature is read from the last 2 digits of each record (`substring(19,21)`), matching the sample data.
