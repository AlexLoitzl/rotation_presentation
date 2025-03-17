echo_getc_spec :=
  ∃ f vs h, vis(Call? f vs h);
  TAssume (f = "echo");;
  TAssume (vs = []);;
  Spec.forever(
  v ← TGet;
  TPut (v + 1);;
  h ← TExist _;
  (_, h') ← CallRet?! "putc" [v] h;
  TAssume (h = h')).
