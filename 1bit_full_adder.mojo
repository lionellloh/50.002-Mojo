<?xml version="1.0" encoding="UTF-8"?>
<project name="1bit_full_adder" board="Mojo V3" language="Lucid">
  <files>
    <src>stateCounter.luc</src>
    <src>multi_seven_seg.luc</src>
    <src top="true">mojo_top.luc</src>
    <src>adder_fsm.luc</src>
    <src>seven_seg.luc</src>
    <ucf>custom.ucf</ucf>
    <ucf lib="true">mojo.ucf</ucf>
    <ucf lib="true">io_shield.ucf</ucf>
    <component>counter.luc</component>
    <component>decoder.luc</component>
    <component>reset_conditioner.luc</component>
    <component>edge_detector.luc</component>
  </files>
</project>
