# Keyboard Bindings Reference

**Last Updated:** January 1, 2025
**Philosophy:** One physical Hyper layer with multiple contexts, minimal keystrokes, maximum ergonomics

---

## 🏗️ Architecture

```
Physical Keys:
├── Right Shift → Escape (Karabiner)
│   └── For: Terminal, vim, escape sequences
│   └── Timing: Immediate, no delay
│
├── Caps Lock → Escape/Hyper (Hammerspoon)
│   ├── Tap (0-300ms) → Escape
│   │   └── For: Quick vi navigation, backup escape
│   │
│   └── Hold (300ms+) → Hyper modifier (⌃⌥⇧⌘)
│       └── For: Keybindings, app launching, window management
│
└── Ctrl+hjke → Arrows (Karabiner)
    └── For: Text navigation without leaving home row
    └── Note: Will be upgraded to Hyper+hjkl in Phase 2
```

---

## 📊 Current Bindings (Phase 0)

### Right Shift
```
Right Shift → Escape
  • Single press outputs Escape
  • No timing ambiguity
  • Perfect for terminal/vim
```

### Caps Lock (Established)
```
Caps Lock (tap)        → Escape
Caps Lock + Escape     → [Reserved]
```

### Caps Lock + App Launcher (From Hammerspoon)
```
Hyper + i              → IntelliJ IDEA Ultimate
Hyper + n              → Notes
Hyper + s              → Slack
Hyper + t              → iTerm
Hyper + a              → Alacritty
Hyper + c              → Google Chrome
Hyper + m              → Toggle Mute
Hyper + '              → KSheet (keyboard shortcuts viewer)
```

### Existing Mappings (Keep)
```
Ctrl+[                 → Escape (vim/terminal)
Ctrl+h/j/k/e           → Left/Down/Up/Right arrows
```

---

## 🗓️ Phase 1: Week 1 (Stabilization)

**Goal:** Build muscle memory with Caps Lock, no new bindings

**What to do:**
- Use only Hyper + app launchers (i, n, s, t, a, c)
- Test Right Shift for terminal escape sequences
- Let fingers adapt to Caps Lock position
- Document what feels right/wrong

**Checklist:**
- [ ] Day 1-3: Caps Lock feels awkward? Normal, give it 3 days
- [ ] Day 4-7: Muscle memory building, should feel natural now
- [ ] All week: Use Right Shift for terminal escapes, verify reliability

---

## 📅 Phase 2: 30-Day Plan (Pending)

**Goal:** Add window management and vim navigation layers

### Window Management Layer (Hyper + h/j/k/l)
```
Hyper + h              → Snap window to left half
Hyper + j              → Snap window to bottom half
Hyper + k              → Snap window to top half
Hyper + l              → Snap window to right half
```

### Navigation Layer (TBD)
```
Hyper + v              → [TBD] Vim mode or navigation toggle
```

### Quick Actions
```
Hyper + Delete         → Undo (Cmd+Z)
```

---

## 📅 Phase 3: 90-Day Plan (Pending)

### System Controls Layer (Hyper + z/x/c/v)
```
Hyper + z              → Volume down
Hyper + x              → Mute
Hyper + c              → Volume up
Hyper + v              → [Reserved for nav layer]
```

### Advanced Workflows (TBD)
```
[To be filled based on Phase 1-2 feedback]
```

---

## 🧠 Mental Model

Think of your keyboard in layers:

```
Layer 0: Base
  Escape for terminal     (Right Shift)
  Letter/symbol keys     (Normal)

Layer 1: Hyper (Caps Lock + key)
  App launching          (Hyper + i/n/s/t/a/c)
  System quick actions   (Hyper + m)
  [Phase 2] Window snap  (Hyper + h/j/k/l)
  [Phase 3] System ctrl  (Hyper + z/x/c)
```

---

## ⚠️ Important Notes

### Right Shift for Terminal
- Reliable, no timing issues
- Use this for vim escape sequences
- Example: Right Shift + L (clear in bash)
- Example: Right Shift + V (visual mode in vim)

### Caps Lock for Hyper
- Intentional presses (keybindings)
- Think "I want to do an action" (launch app, move window)
- Not for rapid terminal sequences

### Mixing Right Shift + Caps Lock
- **Don't do this:** Right Shift + Caps Lock + i
- Each modifier has its own purpose
- Right Shift = Escape sequences
- Caps Lock = Intentional keybindings

---

## 📋 Testing Checklist

### Week 1 Tests
- [ ] Right Shift + L in bash (clear screen)
- [ ] Right Shift in vim command mode (escape works)
- [ ] Caps Lock tap outputs Escape
- [ ] Hyper + i launches IntelliJ
- [ ] Hyper + s launches Slack
- [ ] Hyper + ' shows keyboard shortcuts

### Comfort Checks
- [ ] Caps Lock position feels natural after 3 days
- [ ] No accidental Escapes when typing
- [ ] Hyper bindings are responsive (< 0.3s)

---

## 🔧 Configuration Files

- **Karabiner:** `~/.config/karabiner/karabiner.json`
- **Hammerspoon:** `~/.hammerspoon/init.lua`
- **Dotfiles:** `~/.dotfiles/` (version controlled)

---

## 📖 References

- [Vonng/Capslock](https://github.com/Vonng/Capslock) - Community standard
- [mxstbr/karabiner](https://github.com/mxstbr/karabiner) - TypeScript approach
- [jasonrudolph/keyboard](https://github.com/jasonrudolph/keyboard) - Hammerspoon-only approach
