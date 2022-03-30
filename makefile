VERILOG = iverilog
TARGET = blocking.vcd
TEMP = blocking.vpp
$(TARGET) : blocking.vvp
	vvp blocking.vvp
blocking.vvp: blocking_tb.v blocking.v
	$(VERILOG) -o blocking.vvp blocking_tb.v blocking.v
clean:
	-del $(TARGET)
	-del $(TEMP)
