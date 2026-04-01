# eel7035-mic-training

#### wokwi

```
https://wokwi.com/
```

#### ESP-IDF 

```
https://docs.espressif.com/projects/esp-idf/en/v5.3/esp32c3/get-started/linux-macos-setup.html
```
#### Quick Installation (Pop!_OS or Debian/Ubuntu-based Linux)

**1. Install prerequisites:**
```bash
sudo apt-get install git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0
```

```
mkdir -p ~/esp
cd ~/esp
git clone -b v5.3 --recursive https://github.com/espressif/esp-idf.git
```

```
cd ~/esp/esp-idf
./install.sh esp32c3
```


