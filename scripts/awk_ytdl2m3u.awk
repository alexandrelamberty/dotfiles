#!/bin/awk -f
{
  switch (NR % 4) {
    case 3: title=$0; break
    case 1: file=$0; break
    case 0: 
      split($0, parts, ":")
      duration = parts[1] * 60 + parts[2]
      print "#EXTINF:" duration "," title "\n" file "\n"
      break
  }
}
