getc_spec :=
  Spec.forever(
  ∃ f vs h, vis(Call? f vs h);
  TAssume (f = "getc");;
  TAssume (vs = []);;
  v ← TGet;
  TPut (v + 1);;
  TVis (Return! v h)).
