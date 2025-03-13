TGT Call "echo" es @ Π
  PRE |-∗: es POST_e, ∃ v, P v ∗ ⌜es = []⌝ ∗
    TGT Call "putc" es @ Π
      PRE |-∗: es POST, P (v + 1) ∗ ⌜es = [v]⌝ ∗
      POST |∗: _, P (v + 1) (∗)
  POST_e |∗: ret, ⌜ret = 0⌝ ∗ P (v + 1).
