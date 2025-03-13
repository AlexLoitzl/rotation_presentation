Lemma sim_getc fns Π_l Π_r PL σi :
  "getc" ↪ None -∗
  PL σi -∗
  ⌜σi.1 ≡ getc_spec⌝ -∗
  ⌜σi.2 = 0⌝ -∗
  □ switch Π_l
      PRE |-∗: κ σ0 POST, ∃ h v σg, PL σg ∗
      POST Tgt _ _ |∗:  σi0 Πi, ⌜σi0 = σg⌝ ∗ ⌜Πi = Π_r⌝ ∗
    switch Πi
      PRE |-∗: κ' σ POST0, ∃ e' : rec_ev, ⌜κ' = Some (Incoming, e')⌝ ∗
      POST0 Tgt _ _ |∗: σr Πr, ⌜σr = σ⌝ ∗ ⌜e' = ERCall "getc" [] h⌝ ∗
    switch Πr
      PRE |-∗: κ0 σ1 POST1, ∃ h', ⌜κ0 = Some (Outgoing, ERReturn v h')⌝ ∗
      POST1 Tgt _ _ |∗: σi1 Πi0, ⌜σi1 = σ0⌝ ∗
    switch Πi0
      PRE |-∗: κ'0 σ2 POST2, ∃ e'0, ⌜κ'0 = Some (Incoming, e'0)⌝ ∗
      POST2 Tgt _ _ |∗: σr0 Πr0,
        ⌜σr0 = σ2⌝ ∗ ⌜e'0 = ERReturn v h'⌝ ∗ ⌜Πr0 = Π_l⌝ ∗ PL σ1 ==∗
  ∃ P, P 0 ∗ □ rec_fn_spec_hoare Tgt Π_l "getc" (getc_fn_spec P).
