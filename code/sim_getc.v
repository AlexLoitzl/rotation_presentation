Lemma sim_getc fns Π_l Π_r PL σi :
  "getc" ↪ None -∗
  PL σi -∗
  ⌜σi.1 ≡ getc_spec⌝ -∗
  ⌜σi.2 = 0⌝ -∗
  □ switch_linked_fixed Tgt Π_l Π_r
      PRE |-∗: σ_l POST, ∃ h v σg, PL σg ∗
      POST (ERCall "getc" [] h) σg |∗: σr Π_r',
    switch_link Tgt Π_r'
      Pre |-∗: σ_r' POST, ∃ h'
      POST (ERReturn (ValNum v) h') _ σ_l |∗: _ Π_l',
        ⌜Π_l' = Π_l⌝ ∗ PL σ_r' ==∗
  ∃ P, P 0 ∗ □ rec_fn_spec_hoare Tgt Π_l "getc" (getc_fn_spec P).
