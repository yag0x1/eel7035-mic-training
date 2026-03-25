# eel7035-mic-training
PhD Teaching Training Internship repository: Code examples and supplementary material to prepare me for the EEL7035 - Microprocessors and Microcontrollers course at UFSC.

## Introduction

The RISC-V architecture is experiencing a moment of strong growth in the industry, expanding its application from small embedded systems to servers, with performance levels that are already competing head-to-head with ARM and x86 architectures. As my advisor rightly points out: "RISC-V is the future."

The great appeal of this ISA is its open-source nature, which eliminates licensing costs and enables much more affordable end products. In addition to this, its structure is inherently simpler than legacy architectures and features robust documentation, making the learning curve much smoother.

This promising architecture is an opportunity for students to prepare for what could be a strong market demand in the future.

## Table of Contents
* [1. RARS Simulations](1.rars-simulations/README.md)
* [2. Ripes Simulations](2.ripes-simulations/README.md)
* [3. ESP32-C3 Learning](3.esp32c3-learning/README.md)








# EEL7035 Microprocessors and Microcontrollers Training

This repository contains code examples and supplementary material developed for my Ph.D. Teaching Training Internship associated with the EEL7035 - Microprocessors and Microcontrollers course at the Federal University of Santa Catarina (UFSC).

## Introduction

The RISC-V architecture is experiencing significant growth in the industry, expanding its application from small embedded systems to servers, achieving performance levels competitive with ARM and x86 architectures. It is widely considered a foundational architecture for the future of computing.

A major advantage of this Instruction Set Architecture (ISA) is its open-source nature, which eliminates licensing costs and enables more affordable end products. Furthermore, its structure is inherently simpler than legacy architectures and is supported by robust documentation, facilitating a smoother learning curve.

This architecture presents a valuable opportunity for academic study, preparing students for strong future market demands.

## Table of Contents

1. [RARS Simulations](./1.rars-simulations/README.md)
2. [Ripes Simulations](./2.ripes-simulations/README.md)
3. [ESP32-C3 Learning](./3.esp32c3-learning/README.md)

---

## Tools and Setup

The following tools are utilized in this repository for simulation and development.

### Simulators and Web Tools

* **RARS:** [GitHub Repository](https://github.com/TheThirdOne/rars)
* **Ripes:** [GitHub Repository](https://github.com/mortbopet/Ripes)
* **Wokwi (Online Simulator):** [Website](https://wokwi.com/)

### ESP-IDF Framework

The official Espressif IoT Development Framework is required for ESP32-C3 development. Official documentation can be found [here](https://docs.espressif.com/projects/esp-idf/en/v5.3/esp32c3/get-started/linux-macos-setup.html).

#### Quick Installation (Debian/Ubuntu-based Linux)

**1. Install prerequisites:**
```bash
sudo apt-get install git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0
```

Quick Installation:

```
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


