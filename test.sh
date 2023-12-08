#!/bin/sh
if [ "$X" -lt "0" ]
then
  echo "X is less than zero"
fi
if [ "$X" -gt "0" ]; then
  echo "X is more than zero"
fi
[ "$X" -le "0" ] && \
      echo "X is less than or equal to  zero"
[ "$X" -ge "0" ] && \
      echo "X is more than or equal to zero"
[ "$X" = "0" ] && \
      echo "X is the string or number \"0\""
[ "$X" = "hello" ] && \
      echo "X matches the string \"hello\""
[ "$X" != "hello" ] && \
      echo "X is not the string \"hello\""
[ -n "$X" ] && \
      echo "X is of nonzero length"
[ -f "$X" ] && \
      echo "X is the path of a real file" || \
      echo "No such file: $X"
[ -x "$X" ] && \
      echo "X is the path of an executable file"
[ "$X" -nt "/etc/passwd" ] && \
      echo "X is a file which is newer than /etc/passwd"

# Note that we can use the semicolon (;) to join two lines together.
# This is often done to save a bit of space in simple if statements.
# The backslash (\) serves a similar,
# but opposite purpose: it tells the shell that this is not the end of the line,
# but that the following line should be treated as part of the current line.
# This is useful for readability. It is customary to indent the
# following line after a backslash (\) or semicolon (;).      

# Note that -a, -e (both meaning "file exists"), -S (file is a Socket), -nt (file is newer than),
# -ot (file is older than), -ef (paths refer to the same file)
# and -O (file is owned by the user running the test) are not available in the traditional Bourne shell
# (eg, /bin/sh on Solaris, AIX, HPUX, etc).