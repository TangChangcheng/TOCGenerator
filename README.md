# TOCGenerator

This repo includes a simple shell script that generates TOC(table-of-content) only from a markdown file.

```{.shell}
./toc_generate.sh $file [$begin_depth=1, [$end_depth=5]] > toc.md
```

The command above can produce TOC from a standard markdown file, and if `$start_depth` is greater than 1, extra-tab before the subtitle will be elimited.
