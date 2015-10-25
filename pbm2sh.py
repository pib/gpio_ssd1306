import sys
import re

with open(sys.argv[1]) as f:
    magic = f.readline().strip()
    if magic != "P1":
        print "Expected file to start with P1"
        sys.exit(1)

    f.readline() # Ignore comment line
    w, h = [int(n) for n in f.readline().strip().split(" ")]
    pixels = re.sub(r"[^01]", "", f.read())
    lines = [pixels[i:i+w] for i in xrange(0, len(pixels), w)]

if len(lines) > 64:
    print "Max 64 lines"
    sys.exit(1)

lines.extend(["0"*w] * (64 % len(lines))) # Pad out to 64 lines
cols = w
if cols > 128:
    print "Max 128 columns"
    sys.exit(1)

for i in range(cols):
    for byteoff in range(8):
        bits = []
        for bitoff in range(8):
            row = lines[byteoff * 8 + bitoff]
            bits.append(row[i])
        print "write_data", " ".join(reversed(bits))
    print ""
