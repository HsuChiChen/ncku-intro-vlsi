root_dir := $(PWD)
src_dir := $(PWD)/src
syn_dir := $(PWD)/syn
inc_dir := $(PWD)/include
sim_dir := $(PWD)/sim
bld_dir := $(PWD)/build
FSDB_DEF :=
ifeq ($(FSDB),1)
FSDB_DEF := +FSDB
else ifeq ($(FSDB),2)
FSDB_DEF := +FSDB_ALL
endif

$(bld_dir):
	mkdir -p $(bld_dir)
$(syn_dir):
	mkdir -p $(syn_dir)
	
#RTL Simulation
rtl0: | $(bld_dir)
	cd $(bld_dir); \
	ncverilog $(sim_dir)/system_tb.v \
	+incdir+$(src_dir)+$(inc_dir)+$(sim_dir) \
	+define+rtl0$(FSDB_DEF) \
	+access+r;\
	cp $(bld_dir)/after_conv_rtl.bmp $(sim_dir)/

rtl1: | $(bld_dir)
	cd $(bld_dir); \
	ncverilog $(sim_dir)/system_tb.v \
	+incdir+$(src_dir)+$(inc_dir)+$(sim_dir) \
	+define+rtl1$(FSDB_DEF) \
	+access+r;\
	cp $(bld_dir)/after_conv_rtl.bmp $(sim_dir)/

rtl_full: clean rtl0 rtl1

#Post-Synthesis simulation
syn_full: | $(bld_dir)
	cd $(bld_dir); \
	ncverilog $(sim_dir)/system_tb.v \
	-sdf_file $(syn_dir)/system_syn.sdf \
	+incdir+$(syn_dir)+$(inc_dir)+$(sim_dir) \
	+define+SYN$(FSDB_DEF) \
	+access+r;\
	cp $(bld_dir)/after_conv_syn.bmp $(sim_dir)/

#Utilities
nWave: | $(bld_dir)
	cd $(bld_dir); \
	nWave system.fsdb &

superlint: | $(bld_dir)
	cd $(bld_dir); \
	jg -superlint ../script/superlint.tcl &
	

dv: | $(bld_dir) $(syn_dir)
	cp script/synopsys_dc.setup $(bld_dir)/.synopsys_dc.setup; \
	cd $(bld_dir); \
	dc_shell -gui -no_home_init

synthesize: | $(bld_dir) $(syn_dir)
	cd $(bld_dir); \
	cp ../script/synopsys_dc.setup .synopsys_dc.setup; \
	dc_shell -f ../script/synthesis.tcl

check: clean
	@if [ -f StudentID ]; then \
		STUDENTID=$$(grep -v '^$$' StudentID); \
		if [ -z "$$STUDENTID" ]; then \
			echo -e "$(RED)Student ID number is not provided$(NORMAL)"; \
			exit 1; \
		else \
			ID_LEN=$$(expr length $$STUDENTID); \
			if [ $$ID_LEN -eq 9 ]; then \
				if [[ $$STUDENTID =~ ^[A-Z][A-Z0-9][0-9]+$$ ]]; then \
					echo -e "$(BLUE)Student ID number pass$(NORMAL)"; \
				else \
					echo -e "$(RED)Student ID number should be one capital letter and 8 numbers (or 2 capital letters and 7 numbers)$(NORMAL)"; \
					exit 1; \
				fi \
			else \
				echo -e "$(RED)Student ID number length isn't 9$(NORMAL)"; \
				exit 1; \
			fi \
		fi \
	else \
		echo -e "$(RED)StudentID file is not found$(NORMAL)"; \
		exit 1; \
	fi; \
	cp script/check.sh .; \
	sh check.sh; \
	rm check.sh;

tar: check
	STUDENTID=$$(basename $(PWD)); \
	cd ..;\
	tar cvf $$STUDENTID.tar $$STUDENTID
	

.PHONY: clean
	
clean:
	rm -rf $(bld_dir);

	
