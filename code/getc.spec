getc_spec :=
  Spec.forever(
  TExists '(f, vs, h);
  TVis (In, Call f vs h);;
  TAssume (f = "getc");;
  TAssume (vs = []);;
  v ← TGet;
  TPut (v + 1);;
  TVis (Out, Return v h)).
