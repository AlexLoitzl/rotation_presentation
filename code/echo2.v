void echo () :=
  let c := getc();
  putc(c);
  echo ();
