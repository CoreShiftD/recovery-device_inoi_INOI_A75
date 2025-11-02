## ADVAN TAB V8 (_8004_ / _8005_)
## Recovery device tree (TWRP, PBRP, OrangeFox, SHRP)

## Device specifications

Device                  | ADVAN TAB V8
-----------------------:|:-----------------------------------------
SoC                     | Mediatek Helio G99 (6 nm)
CPU                     | Octa-core (2x2.2 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)
GPU                     | Mali-G57 MC2
Memory                  | 8 GB RAM
Storage                 | 128 GB (UFS 2.2)
MicroSD                 | microSDXC (dedicated slot)
Shipped Android Version | 14.0
Battery                 | Non-removable 5000 mAh
Display                 | 1200 x 1920 pixels (~283 ppi density), 8.4 inches, 60hz
Camera                  | 13 MP Sony-IMX278; 5 MP (front)

## Device picture

![ ADVAN TAB V8 ](https://www.alldocube.com/en/wp-content/uploads/2024/05/1716197304-iplay60minipro-thum.png "ADVAN TAB V8")

## Features

Works:

- [X] ADB
- [X] Decryption
- [X] Display
- [X] Fasbootd
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] USB OTG
- [X] Vibrator

## Building
### TWRP, PBRP
_Lunch_ command :

```
lunch twrp_ADVAN_TAB_V8-eng && mka vendorbootimage
```

### SHRP, OrangeFox
_Lunch_ command :

```
lunch twrp_ADVAN_TAB_V8-eng && mka adbd vendorbootimage
```
