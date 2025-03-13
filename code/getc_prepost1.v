TGT Call "echo" es @ Π
  PRE |-∗: es POST_e, ⌜es = []⌝ ∗
    TGT Call "getc" es @ Π
      PRE |-∗: es POST, ⌜es = []⌝ ∗
      POST |∗: ret,
        TGT Call "putc" es @ Π
          PRE |-∗: es POST, ⌜es = [v]⌝ ∗
          POST |∗: _,
  POST_e |∗: ret, ⌜ret = 0⌝.
