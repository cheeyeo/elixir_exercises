Why does iex print 'cat' as a string, but 'dog' as individual numbers?

iex > ['cat' | 'dog']
['cat',100,111,103]

The ['cat' | 'dog'] contains the following:

[[?c,?a,?t],?d,?o,?g]

Since the first list translates to 'cat' it is ascii printable whereas the
remaining characters are not ascii printable hence only their integer values are
printed out


