

TARGET       ?= esp32c3
PORT         ?= /dev/ttyACM0
IDF_PATH     ?= $(HOME)/esp/esp-idf
EXPORT_SCRIPT = . $(IDF_PATH)/export.sh

.PHONY: all setup build flash monitor clean menuconfig list-ports

all:
	@if [ ! -f sdkconfig ]; then \
		echo "No configuration found. Running setup for $(TARGET)..."; \
		$(MAKE) setup; \
	fi
	@$(MAKE) build

setup:
	@echo "Setting target to $(TARGET)..."
	@bash -c "$(EXPORT_SCRIPT) && idf.py set-target $(TARGET)"

build:
	@echo "Building project for $(TARGET)..."
	@bash -c "$(EXPORT_SCRIPT) && idf.py build"

flash:
	@echo "Flashing firmware to $(PORT)..."
	@bash -c "$(EXPORT_SCRIPT) && idf.py -p $(PORT) flash"

monitor:
	@echo "Opening serial monitor..."
	@bash -c "$(EXPORT_SCRIPT) && idf.py -p $(PORT) monitor"

menuconfig:
	@echo "Opening menuconfig..."
	@bash -c "$(EXPORT_SCRIPT) && idf.py menuconfig"

clean:
	@echo "🧹 Cleaning build artifacts..."
	@bash -c "$(EXPORT_SCRIPT) && idf.py fullclean"

list-ports:
	@echo "🔍 Searching for available serial ports:"
	@ls /dev/ttyUSB* /dev/ttyACM* 2>/dev/null || echo "No devices found."
