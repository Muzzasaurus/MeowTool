blockDepth=savedatap("blockDepth")
spikeDepth=savedatap("spikeDepth")
waterDepth=savedatap("waterDepth")

object_set_depth(Block,blockDepth)
object_set_depth(MiniBlock,blockDepth)
object_set_depth(SlipBlock,blockDepth)

object_set_depth(PlayerKiller,spikeDepth)
object_set_depth(SpikeU,real(spikeDepth))
object_set_depth(SpikeR,real(spikeDepth))
object_set_depth(SpikeL,real(spikeDepth))
object_set_depth(SpikeD,real(spikeDepth))
object_set_depth(MiniSpikeUp,real(spikeDepth))
object_set_depth(MiniSpikeDown,real(spikeDepth))
object_set_depth(MiniSpikeLeft,real(spikeDepth))
object_set_depth(MiniSpikeRight,real(spikeDepth))
object_set_depth(Cherry,real(spikeDepth))
object_set_depth(KillBlock,real(spikeDepth))

object_set_depth(AnyWater,waterDepth)
object_set_depth(Water1,real(waterDepth))
object_set_depth(Water2,real(waterDepth))
object_set_depth(Water3,real(waterDepth))
object_set_depth(CatharsisWater,real(waterDepth))
//object_set_depth(NekoronAir,real(waterDepth))
object_set_depth(UpdraftWater,real(waterDepth))
object_set_depth(WaterNoJump,real(waterDepth))

loadDirect(working_directory+"\default map.meow")

message_background(popupBG)
message_button(sprPopupButton)
message_text_font("Carlito",14,c_black,0)
message_button_font("Carlito",12,c_black,0)
message_input_font("Carlito",10,c_black,0)
message_mouse_color(c_black)
message_input_color(c_white)
