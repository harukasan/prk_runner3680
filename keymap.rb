# Initialize a Keyboard
kbd = Keyboard.new

kbd.split = true

kbd.set_anchor(:left)
kbd.set_debounce(:none)

# Initialize GPIO assign
kbd.init_pins(
  [ 4, 5, 6, 7, 8 ],                 # row
  [ 29, 28, 27, 26, 22, 20, 23, 21 ] # col
)

# L0        L1        L2        L3        L4        L5        L6        L7        R0        R1        R2        R3        R4        R5        R6        R7
kbd.add_layer :default, %i[
  KC_NO     KC_GRAVE  KC_1      KC_2      KC_3      KC_4      KC_5      KC_NO     KC_NO     KC_6      KC_7      KC_8      KC_9      KC_0      KC_MINUS  KC_EQUAL
  KC_NO     KC_TAB    KC_Q      KC_W      KC_E      KC_R      KC_T      KC_ESCAPE NUMPAD    KC_Y      KC_U      KC_I      KC_O      KC_P      KC_BSLASH KC_HOME
  KC_NO     KC_LCTL   KC_A      KC_S      KC_D      KC_F      KC_G      S_TAB     KC_TAB    KC_H      KC_J      KC_K      KC_L      KC_SCOLON KC_QUOTE  KC_END
  KC_NO     KC_LSFT   KC_Z      KC_X      KC_C      KC_V      KC_B      KC_LBRC   KC_RBRC   KC_N      KC_M      KC_COMMA  KC_DOT    KC_SLASH  KC_RSFT   KC_PGUP
  SPECIAL   KC_NO     KC_NO     KC_LALT   KC_LGUI   LOWER     KC_BSPC   KC_LSFT   KC_ENTER  KC_SPACE  RAISE     KC_RGUI   KC_RALT   KC_NO     KC_RCTL   KC_PGDN
]

kbd.add_layer :default_w, %i[
  KC_NO     KC_GRAVE  KC_1      KC_2      KC_3      KC_4      KC_5      KC_NO     KC_NO     KC_6      KC_7      KC_8      KC_9      KC_0      KC_MINUS  KC_EQUAL
  KC_NO     KC_TAB    KC_Q      KC_W      KC_E      KC_R      KC_T      KC_ESCAPE NUMPAD    KC_Y      KC_U      KC_I      KC_O      KC_P      KC_BSLASH KC_HOME
  KC_NO     KC_LCTL   KC_A      KC_S      KC_D      KC_F      KC_G      S_TAB     KC_TAB    KC_H      KC_J      KC_K      KC_L      KC_SCOLON KC_QUOTE  KC_END
  KC_NO     KC_LSFT   KC_Z      KC_X      KC_C      KC_V      KC_B      KC_LBRC   KC_RBRC   KC_N      KC_M      KC_COMMA  KC_DOT    KC_SLASH  KC_RSFT   KC_PGUP
  SPECIAL   KC_NO     KC_LGUI   KC_LALT   KC_LCTL   LOWER     KC_BSPC   KC_LSFT   KC_ENTER  KC_SPACE  RAISE     KC_RCTL   KC_RALT   KC_RGUI   KC_RCTL   KC_PGDN
]

kbd.add_layer :raise, %i[
  KC_NO     KC_TILD   KC_F1     KC_F2     KC_F3     KC_F4     KC_F5     KC_NO     KC_NO     KC_F6     KC_F7     KC_F8     KC_F9     KC_F10    KC_F11    KC_F12
  KC_NO     KC_TAB    KC_1      KC_2      KC_3      KC_4      KC_5      KC_ESCAPE NUMPAD    KC_6      KC_7      KC_8      KC_9      KC_0      KC_MINUS  KC_HOME
  KC_NO     KC_LCTL   KC_EXLM   KC_AT     KC_HASH   KC_DLR    KC_PERC   S_TAB     KC_TAB    KC_LEFT   KC_DOWN   KC_UP     KC_RIGHT  KC_NO     KC_BSLASH KC_END
  KC_NO     KC_LSFT   KC_TILD   KC_NO     KC_NO     KC_NO     KC_NO     KC_LCBR   KC_RCBR   KC_MINUS  KC_UNDS   KC_EQUAL  KC_PLUS   KC_NO     KC_RSFT   KC_PGUP
  SPECIAL   KC_NO     KC_NO     KC_LALT   KC_LGUI   LOWER     KC_BSPC   KC_LSFT   KC_ENTER  KC_SPACE  RAISE     KC_RGUI   KC_RALT   KC_NO     KC_RCTL   KC_PGDN
]

kbd.add_layer :lower, %i[
  KC_NO     KC_TILD   KC_F1     KC_F2     KC_F3     KC_F4     KC_F5     KC_NO     KC_NO     KC_F6     KC_F7     KC_F8     KC_F9     KC_F10    KC_F11    KC_F12
  KC_NO     KC_TAB    KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_ESCAPE NUMPAD    KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_BSLASH KC_HOME
  KC_NO     KC_LCTL   KC_NO     KC_LEFT   KC_UP     KC_DOWN   KC_RIGHT  S_TAB     KC_TAB    KC_CIRC   KC_AMPR   KC_ASTER  KC_LPRN   KC_RPRN   KC_PIPE   KC_END
  KC_NO     KC_LSFT   KC_GRAVE  KC_NO     KC_NO     KC_NO     KC_NO     KC_LCBR   KC_RCBR   KC_UNDS   KC_PLUS   KC_NO     KC_NO     KC_NO     KC_RSFT   KC_PGUP
  SPECIAL   KC_NO     KC_NO     KC_LALT   KC_LGUI   LOWER     KC_BSPC   KC_LSFT   KC_ENTER  KC_SPACE  RAISE     KC_RGUI   KC_RALT   KC_NO     KC_RCTL   KC_PGDN
]

kbd.add_layer :numpad, %i[
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     UNLOCK    UNLOCK    KC_NO     KC_SLASH  KC_ASTER  KC_LPRN   KC_RPRN   KC_NO     KC_NO
  KC_NO     KC_NO     KC_NO     KC_UP     KC_NO     KC_NO     KC_NO     KC_ESCAPE UNLOCK    KC_NO     KC_7      KC_8      KC_9      KC_MINUS  KC_NO     KC_NO
  KC_NO     KC_NO     KC_LEFT   KC_DOWN   KC_RIGHT  KC_NO     KC_NO     S_TAB     KC_TAB    KC_NO     KC_4      KC_5      KC_6      KC_PLUS   KC_QUOTE  KC_NO
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_1      KC_2      KC_3      KC_ENTER  KC_NO     KC_NO
  SPECIAL   KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_BSPC   KC_NO     KC_ENTER  KC_SPACE  KC_0      SEND_00   KC_DOT    KC_NO     KC_NO     KC_NO
]

kbd.add_layer :special, %i[
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     UNLOCK    UNLOCK    KC_NO     KC_NO      KC_NO    KC_NO     KC_NO     KC_NO     KC_NO
  KC_NO     KC_NO     KC_NO     TOG_WIN   KC_NO     KC_NO     KC_NO     KC_NO     UNLOCK    KC_NO     KC_NO      KC_NO    KC_NO     KC_NO     KC_NO     KC_NO
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     S_TAB     KC_NO     KC_NO     KC_NO      KC_NO    KC_NO     KC_NO     KC_NO     KC_NO
  KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO      KC_NO    KC_NO     KC_NO     KC_NO     KC_NO
  SPECIAL   KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO     KC_NO      KC_NO    KC_NO     KC_NO     KC_NO     KC_NO
]

lock_numpad = Proc.new {
  kbd.lock_layer :numpad
}
unlock_layer = Proc.new {
    kbd.unlock_layer
}
kbd.define_mode_key :NUMPAD, [lock_numpad, :KC_NO, 300, nil]
kbd.define_mode_key :UNLOCK, [unlock_layer, :KC_NO, 300, nil] 

win_mode = false
toggle_win_mode = Proc.new {
  win_mode = !win_mode
  kbd.default_layer = win_mode ? :default_w : :default
}
kbd.define_mode_key :TOG_WIN, [toggle_win_mode, :KC_NO, 300, nil]

#                   Your custom     Keycode or            Keycode (only modifiers)      Release time      Re-push time
#                   key name        Array of Keycode      or Layer Symbol to be held    threshold(ms)     threshold(ms)
#                                   or Proc               or Proc which will run        to consider as    to consider as
#                                   when you click        while you keep press          `click the key`   `hold the key`
kbd.define_mode_key :RAISE,       [ :KC_LANG1,            :raise,                       200,              150 ]
kbd.define_mode_key :LOWER,       [ :KC_LANG2,            :lower,                       200,              150 ]
kbd.define_mode_key :SPECIAL,     [ :KC_NO,               :special,                     300,              150 ]
def define_macro_key(key_name, text, opts, threshold)
  kbd.define_mode_key key_name, [Proc.new { kbd.macro(text, opts) }, :KC_NO, threshold, nil]
end
define_macro_key :SEND_00, '00', [], 300

kbd.define_composite_key :S_TAB, [:KC_RSFT, :KC_TAB]

kbd.start!

