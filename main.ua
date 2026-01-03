# Experimental!
I ~ "gh: Marcos-cat/iris"

~St {Snake Apple Dir Moves Dt Score}
Size    ← 15
Scale   ← 64
Padding ← 128
Header  ← ℂ×Size Scale Padding
Step    ← 0.1
Eaten   ← =⊢⊃St~Snake St~Apple
Alive   ← ¬/↥⊂₃⊃(=°⊂|⊃<₀(≥Size)⊂°ℂ)St~Snake

St ℂ⇌⇡₁3 7 ℂ10 7 i [] 0 0
I~Open +Padding ˙ℂ×Size Scale "snake"

I~Loop‼Alive(
  ⍜St~Moves(⊂I~Key~WASD 1)

  ⨬∘(
    °⊸St~Dir ⊏⊃(=¯)⊟ ⤚⍣⋅⊢∘ ⊸⊃St~Dir St~Moves
    ⍜St~Moves↘₋₁
    ⍜St~Snake(⊂⤚(+⊢))⟜St~Dir
    ⨬⍜St~Snake↘₋₁(
      ⍜(⊸St~Apple)⍢⋅(/ℂ⌊×Size⍥₂⚂)˜(∊St~Snake)
      ⍜St~Score+₁
    )⊸Eaten
    °⊸St~Dt 0
  )≥Step⊸St~Dt

  I~Draw~Background I~Color~Crust
  I~Draw~Rect I~Color~Base Header 0i
  I~Draw~Text!(°⊸Centered 1) I~Color~Text ÷₂Padding ÷₂Header ⊸St~Score
  I~Draw~Square I~Color~Green Scale +Padding×Scale ⊸St~Snake
  I~Draw~Square I~Color~Red Scale +Padding×Scale ⊸St~Apple

  ⍜St~Dt(+I~Window~Dt)
)
