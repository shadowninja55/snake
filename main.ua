# Experimental!
I ~ "gh: Marcos-cat/iris"

~ {Snake Apple Dir Moves Since Score}
Size    ← 15
Scale   ← 64
Padding ← 128
Header  ← ℂ×Size Scale Padding
Step    ← 0.1
Eaten   ← =⊢⊃Snake Apple
Alive   ← ¬/↥⊂₃⊃(=°⊂|⊃<₀(≥Size)⊂°ℂ)Snake

New ℂ⇌⇡₁3 7 ℂ10 7 i [] 0 0
I~Open +Padding ˙ℂ×Size Scale "snake"
°I~Window~FPS 60

I~Loop‼Alive(
  ⍜Moves⊂⟜(▽⤚≠I~Key~WASD 1 ¯Dir)

  ⨬∘(
    °⊸Dir ⍣⋅⊢∘ ⊸⊃Dir Moves
    ⍜Moves↘₋₁
    ⍜Snake(⊂⤚(+⊢))⟜Dir
    ⨬⍜Snake↘₋₁(
      ⍜(⊸Apple)⍢⋅(/ℂ⌊×Size⍥₂⚂)˜(∊Snake)
      ⍜Score+₁
    )⊸Eaten
    °⊸Since 0
  )≥Step⊸Since

  I~Draw~Background I~Color~Crust
  I~Draw~Rect I~Color~Base Header 0i
  I~Draw~Text!(°⊸Centered 1) I~Color~Text ÷₂Padding ÷₂Header ⊸Score
  I~Draw~Square I~Color~Green Scale +Padding×Scale ⊸Snake
  I~Draw~Square I~Color~Red Scale +Padding×Scale ⊸Apple

  ⍜Since(+I~Window~Dt)
)
