# Rpi-Power8A
Power board for Raspberry Pi5, supply from USB PD (12V)

## First Of All
本基板をご使用の際は,
+ Raspberry Pi 本体の USB Type-C の電源コネクタは使用しないでください.
+ 5V 電源の消費電力が 5A 越えたあたりから基板がかなり熱くなりますので十分な放熱をしてください.
+ 接続する USB PD 電源の能力以上の電力を供給する事はできません.
+ Raspberry Pi 本体への直接接続は長いタイプの連結コネクタ (13.5mm) を使用し, スペーサーは 16.5mm (17mm) 長をご使用ください. すでにRaspberry Pi 本体に他の基板を接続されている場合は, 短い方のコネクタ (8.5mm) と 11mm スペーサーが使用可能です (本基板の下側に位置する基板の部品高をご確認下さい).


## Documents
+ [Brochure](docs/Rpi-Power8A-1.02.doc.pdf)    [JP](docs/Rpi-Power8A-1.02.doc.pdf)
+ [Schematics](sch/Rpi-Power8A-1.02.sch.pdf)
## Code Examples
+ on/off continuously
  - [testOnOff.sh](examples/testOnOff.sh) DEV0 から DEV3 を1ヶ所ずつ順に on にする
  - [testOnOffAll.sh on|off](examples/testOnOffAll.sh) DEV0 から DEV3 すべてを on もしくは off にする
