################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name FRAME_512_PORTA_0_clk -period 10 [get_ports FRAME_512_PORTA_0_clk]
create_clock -name FRAME_512_PORTB_0_clk -period 10 [get_ports FRAME_512_PORTB_0_clk]
create_clock -name SPRITE_512_PORTA_0_clk -period 10 [get_ports SPRITE_512_PORTA_0_clk]
create_clock -name SPRITE_512_PORTB_0_clk -period 10 [get_ports SPRITE_512_PORTB_0_clk]
create_clock -name UPPER_PREVIOUS_512_PORTA_0_clk -period 10 [get_ports UPPER_PREVIOUS_512_PORTA_0_clk]
create_clock -name UPPER_PREVIOUS_512_PORTB_0_clk -period 10 [get_ports UPPER_PREVIOUS_512_PORTB_0_clk]
create_clock -name UPPER_512_PORTA_0_clk -period 10 [get_ports UPPER_512_PORTA_0_clk]
create_clock -name UPPER_512_PORTB_0_clk -period 10 [get_ports UPPER_512_PORTB_0_clk]

################################################################################