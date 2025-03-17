Definition getc_spec Π es Φ P :=
TGT Call "getc" es @ Π {{Φ}}
  PRE |-∗: es POST, ∃ v, P v ∗ ⌜es = []⌝ ∗
  POST |∗: ret, ⌜ret = v⌝ ∗ P (v + 1).
