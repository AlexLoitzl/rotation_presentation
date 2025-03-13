TGT Call "getc" es @ Π
  PRE |-∗: es POST, ∃ v, P v ∗ ⌜es = []⌝ ∗
  POST |∗: ret, ⌜ret = v⌝ ∗ P (v + 1).
