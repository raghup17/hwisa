
all: clb_add clb_splitter

clb_add: clb_splitter
	iverilog clb_splitter.v clb_add.v clb_add_tb.v -o clb_add

clb_splitter:
	iverilog clb_splitter.v clb_splitter_tb.v -o clb_splitter

clean:
	rm -f clb_splitter clb_add


