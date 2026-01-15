import {
  hyperLayer,
  map,
  rule,
  writeToProfile,
} from 'karabiner.ts'

// =============================================================================
// CONFIGURATION
// =============================================================================

const PROFILE_NAME = 'Default profile'

// =============================================================================
// MAIN CONFIGURATION
// =============================================================================

writeToProfile(PROFILE_NAME, [
  // ---------------------------------------------------------------------------
  // Hyper Key: Caps Lock → ⌘⌃⌥⇧ (Cmd+Ctrl+Alt+Shift)
  // When tapped alone: Escape
  // When held: Acts as Hyper modifier for use in app shortcuts
  // ---------------------------------------------------------------------------
  rule('Hyper Key (⌃⌥⇧⌘)').manipulators([
    map('caps_lock')
      .toHyper()
      .toIfAlone('escape'),
  ]),

  // ---------------------------------------------------------------------------
  // Hyper + O: Open Applications
  // ---------------------------------------------------------------------------
  hyperLayer('o', 'open-app')
    .description('Hyper + O → Open Apps')
    .notification()
    .manipulators([
      map('c').toApp('Visual Studio Code'),   // Code editor
      map('d').toApp('Discord'),
      map('e').toApp('Mail'),                 // Email (Apple Mail)
      map('f').toApp('Finder'),
      map('g').toApp('Google Chrome'),
      map('r').toApp('Reminders'),             // Reminders
      map('m').toApp('Messages'),             // iMessage
      map('n').toApp('Notes'),                // Apple Notes
      map('p').toApp('Spotify'),              // Music (Play)
      map('s').toApp('Slack'),
      map('t').toApp('Ghostty'),              // Terminal
      map('w').toApp('Passwords'),            // Apple Passwords
    ]),

  // ---------------------------------------------------------------------------
  // Hyper + W: Window Management (via Raycast)
  // ---------------------------------------------------------------------------
  hyperLayer('w', 'window-management')
    .description('Hyper + W → Window Management')
    .notification()
    .manipulators([
      // Window positioning (Raycast Window Management)
      map('h').to$('open -g "raycast://extensions/raycast/window-management/left-half"'),
      map('l').to$('open -g "raycast://extensions/raycast/window-management/right-half"'),
      map('k').to$('open -g "raycast://extensions/raycast/window-management/top-half"'),
      map('j').to$('open -g "raycast://extensions/raycast/window-management/bottom-half"'),
      map('f').to$('open -g "raycast://extensions/raycast/window-management/maximize"'),
      map('c').to$('open -g "raycast://extensions/raycast/window-management/center"'),

      // Move to displays
      map('y').to$('open -g "raycast://extensions/raycast/window-management/previous-display"'),
      map('o').to$('open -g "raycast://extensions/raycast/window-management/next-display"'),

      // Tab/Window navigation
      map('u').to('tab', ['right_control', 'right_shift']), // Previous tab
      map('i').to('tab', 'right_control'),                   // Next tab
      map('n').to('grave_accent_and_tilde', 'right_command'), // Next window of same app

      // Hide window
      map('semicolon').to('h', 'right_command'),
    ]),

  // ---------------------------------------------------------------------------
  // Hyper + V: Vim-style Navigation (moVe)
  // ---------------------------------------------------------------------------
  hyperLayer('v', 'vim-navigation')
    .description('Hyper + V → Vim Navigation')
    .notification()
    .manipulators([
      // Arrow keys
      map('h').to('left_arrow'),
      map('j').to('down_arrow'),
      map('k').to('up_arrow'),
      map('l').to('right_arrow'),

      // Page up/down
      map('u').to('page_down'),
      map('i').to('page_up'),

      // Word navigation (Option + Arrow)
      map('b').to('left_arrow', 'left_option'),   // Back word
      map('w').to('right_arrow', 'left_option'),  // Forward word

      // Line navigation
      map('0').to('left_arrow', 'left_command'),  // Start of line
      map('4').to('right_arrow', 'left_command'), // End of line (like $ in vim)
    ]),

  // ---------------------------------------------------------------------------
  // Hyper + T: Terminal/Shell Shortcuts (Ctrl key equivalents)
  // Works in any terminal: Ghostty, iTerm, SSH sessions, etc.
  // ---------------------------------------------------------------------------
  hyperLayer('t', 'terminal')
    .description('Hyper + T → Terminal')
    .notification()
    .manipulators([
      // Line editing
      map('l').to('l', 'left_control'),           // Clear screen
      map('a').to('a', 'left_control'),           // Beginning of line
      map('e').to('e', 'left_control'),           // End of line
      map('u').to('u', 'left_control'),           // Clear line before cursor
      map('k').to('k', 'left_control'),           // Clear line after cursor
      map('w').to('w', 'left_control'),           // Delete word before cursor

      // Signals
      map('c').to('c', 'left_control'),           // Cancel/Interrupt (SIGINT)
      map('d').to('d', 'left_control'),           // Exit/EOF (logout)
      map('z').to('z', 'left_control'),           // Suspend (SIGTSTP)

      // History
      map('r').to('r', 'left_control'),           // Reverse search history
      map('p').to('p', 'left_control'),           // Previous command (like up arrow)
      map('n').to('n', 'left_control'),           // Next command (like down arrow)

      // Navigation
      map('f').to('f', 'left_control'),           // Forward one character
      map('b').to('b', 'left_control'),           // Back one character

      // Miscellaneous
      map('g').to('g', 'left_control'),           // Cancel current input
      map('o').to('o', 'left_control'),           // Execute and bring back
      map('x').to('x', 'left_control'),           // Prefix for extended commands
    ]),

  // ---------------------------------------------------------------------------
  // Hyper + S: System Controls
  // ---------------------------------------------------------------------------
  hyperLayer('s', 'system-controls')
    .description('Hyper + S → System Controls')
    .notification()
    .manipulators([
      // Volume
      map('u').to('volume_increment'),
      map('j').to('volume_decrement'),
      map('m').to('mute'),

      // Brightness
      map('i').to('display_brightness_increment'),
      map('k').to('display_brightness_decrement'),

      // Media
      map('p').to('play_or_pause'),
      map('semicolon').to('fastforward'),
      map('comma').to('rewind'),

      // Lock screen
      map('l').to('q', ['right_control', 'right_command']),

      // Toggle Do Not Disturb (Raycast)
      map('d').to$('open -g "raycast://extensions/yakitrak/do-not-disturb/toggle"'),

      // Toggle dark mode (Raycast)
      map('t').to$('open -g "raycast://extensions/raycast/system/toggle-system-appearance"'),
    ]),

  // ---------------------------------------------------------------------------
  // Hyper + R: Raycast Commands
  // ---------------------------------------------------------------------------
  hyperLayer('r', 'raycast')
    .description('Hyper + R → Raycast')
    .notification()
    .manipulators([
      map('e').to$('open -g "raycast://extensions/raycast/emoji-symbols/search-emoji-symbols"'),
      map('c').to$('open -g "raycast://extensions/thomas/color-picker/pick-color"'),
      map('h').to$('open -g "raycast://extensions/raycast/clipboard-history/clipboard-history"'),
      map('a').to$('open -g "raycast://extensions/raycast/raycast-ai/ai-chat"'),
      map('p').to$('open -g "raycast://extensions/raycast/raycast/confetti"'),
      map('s').to$('open -g "raycast://extensions/raycast/snippets/search-snippets"'),
      map('q').to$('open -g "raycast://extensions/raycast/raycast/search-quicklinks"'),
      map('n').to$('open -g "raycast://extensions/raycast/raycast-notes/raycast-notes"'),
    ]),

  // ---------------------------------------------------------------------------
  // Hyper + B: Browse (Open URLs)
  // ---------------------------------------------------------------------------
  hyperLayer('b', 'browse')
    .description('Hyper + B → Browse')
    .notification()
    .manipulators([
      map('g').to$('open "https://github.com"'),
      map('y').to$('open "https://youtube.com"'),
      map('t').to$('open "https://twitter.com"'),
      map('r').to$('open "https://reddit.com"'),
      map('h').to$('open "https://news.ycombinator.com"'), // Hacker News
    ]),
])
