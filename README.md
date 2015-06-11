# dsc-tnull
dsc to assess null behaviour of shrinkage/fdr/fsr methods

Basic idea is just to simulate null data, and count how often methods produce
"significant" findings, by some criteria (eg qvalue<0.05, lfsr<0.05).

This is under construction. Currently uses an old version of the dscr package - needs updating to new version of package.
