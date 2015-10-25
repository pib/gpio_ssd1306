import sys

lines = [l.rstrip() for l in open(sys.argv[1]).readlines() if len(l.rstrip()) > 0]
if len(lines) > 64:
    print "Max 64 lines"
    sys.exit(1)
lines.extend([""] * (64 % len(lines))) # Pad out to 64 lines
cols = max(len(l) for l in lines)
if cols > 128:
    print "Max 128 columns"
    sys.exit(1)

for i in range(cols):
    for byteoff in range(8):
        bits = []
        for bitoff in range(8):
            row = lines[byteoff * 8 + bitoff]
            bits.append(row[i].replace(" ", "0") if len(row) > i else "0")
        print "write_data", " ".join(reversed(bits))
    print ""
