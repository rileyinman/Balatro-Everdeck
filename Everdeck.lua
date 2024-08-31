--- STEAMODDED HEADER
--- MOD_NAME: Everdeck
--- MOD_ID: everdeck
--- MOD_AUTHOR: [DoggyDogWhirl]
--- MOD_DESCRIPTION: This mod changes the normal deck to the Everdeck, a 120-card deck by efofecks.
--- PREFIX: everdeck

----------------------------------------------
------------MOD CODE -------------------------

local everdeck = SMODS.current_mod

-- This is ugly, but swap the orders of the vanilla suits for the deck preview / view
-- Default array order is Diamonds -> Clubs -> Hearts -> Spades and we want Clubs -> Spades -> Hearts -> Diamonds
SMODS.Suit.obj_buffer[1], SMODS.Suit.obj_buffer[2], SMODS.Suit.obj_buffer[4] = SMODS.Suit.obj_buffer[2], SMODS.Suit.obj_buffer[4], SMODS.Suit.obj_buffer[1]

SMODS.Atlas {
    key = 'cards_1',
    path = '8BitDeck.png',
    px = 71,
    py = 95,
    prefix_config = { key = false }
}

SMODS.Atlas {
    key = 'cards_2',
    path = '8BitDeck_opt2.png',
    px = 71,
    py = 95,
    prefix_config = { key = false }
}

SMODS.Atlas {
    key = 'ui_1',
    path = 'ui_assets.png',
    px = 18,
    py = 18
}

SMODS.Atlas {
    key = 'ui_2',
    path = 'ui_assets.png',
    px = 18,
    py = 18
}

-- We need to change suit_nominal for in-hand sorting
SMODS.Suit:take_ownership('Clubs', {
    suit_nominal = 0.01
})
SMODS.Suit:take_ownership('Spades', {
    suit_nominal = 0.02
})
SMODS.Suit:take_ownership('Hearts', {
    suit_nominal = 0.03
})
SMODS.Suit:take_ownership('Diamonds', {
    suit_nominal = 0.04
})

SMODS.Suit {
    key = 'Coins',
    card_key = 'COIN',
    lc_atlas = 'cards_1',
    hc_atlas = 'cards_2',
    lc_ui_atlas = 'ui_1',
    hc_ui_atlas = 'ui_2',
    pos = { y = 4 },
    ui_pos = { x = 0, y = 0 },
    lc_colour = HEX('ffa300'),
    hc_colour = HEX('ffa300')
}

SMODS.Suit {
    key = 'Crowns',
    card_key = 'CROWN',
    lc_atlas = 'cards_1',
    hc_atlas = 'cards_2',
    lc_ui_atlas = 'ui_1',
    hc_ui_atlas = 'ui_2',
    pos = { y = 5 },
    ui_pos = { x = 1, y = 0 },
    lc_colour = HEX('fe5f55'),
    hc_colour = HEX('fe5f55')
}

SMODS.Suit {
    key = 'Moons',
    card_key = 'MOON',
    lc_atlas = 'cards_1',
    hc_atlas = 'cards_2',
    lc_ui_atlas = 'ui_1',
    hc_ui_atlas = 'ui_2',
    pos = { y = 6 },
    ui_pos = { x = 2, y = 0 },
    lc_colour = HEX('29adff'),
    hc_colour = HEX('29adff')
}

SMODS.Suit {
    key = 'Stars',
    card_key = 'STAR',
    lc_atlas = 'cards_1',
    hc_atlas = 'cards_2',
    lc_ui_atlas = 'ui_1',
    hc_ui_atlas = 'ui_2',
    pos = { y = 7 },
    ui_pos = { x = 3, y = 0 },
    lc_colour = HEX('347649'),
    hc_colour = HEX('347649')
}

SMODS.Rank {
    key = 1,
    card_key = 1,
    pos = { x = 1 },
    nominal = 1,
    next = { '2' },
    shorthand = '1'
}

SMODS.Rank {
    key = 0,
    card_key = 0,
    pos = { x = 0 },
    nominal = 0,
    next = { 'Ace', 'everdeck_1' },
    shorthand = '0'
}

SMODS.Rank:take_ownership('2', { pos = { x = 2 } })
SMODS.Rank:take_ownership('3', { pos = { x = 3 } })
SMODS.Rank:take_ownership('4', { pos = { x = 4 } })
SMODS.Rank:take_ownership('5', { pos = { x = 5 } })
SMODS.Rank:take_ownership('6', { pos = { x = 6 } })
SMODS.Rank:take_ownership('7', { pos = { x = 7 } })
SMODS.Rank:take_ownership('8', { pos = { x = 8 } })
SMODS.Rank:take_ownership('9', { pos = { x = 9 } })
SMODS.Rank:take_ownership('10', { pos = { x = 10 } })
SMODS.Rank:take_ownership('Jack', { pos = { x = 11 } })
SMODS.Rank:take_ownership('Queen', { pos = { x = 12 } })
SMODS.Rank:take_ownership('King', { pos = { x = 13 } })
SMODS.Rank:take_ownership('Ace', { pos = { x = 14 } })

---SMODS.Card.RANKS['10'].shorthand = 'X'

----------------------------------------------
------------MOD CODE END----------------------
