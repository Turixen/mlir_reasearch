OPT = mlir-opt
TRANSLATE = mlir-translate

#Allow specifying additional flags before the default flags
OPTFLAGS += 

#Default optimization flags
#OPTFLAGS += -linalg-generalize-named-opsà
#OPTFLAGS += -sparsification-and-bufferization
#OPTFLAGS += -sparse-tensor-codegen
#OPTFLAGS += -sparse-storage-specifier-to-llvm
#OPTFLAGS += -finalize-memref-to-llvm
#OPTFLAGS += -canonicalize
#OPTFLAGS += -cse
OPTFLAGS += -sparsifier="vl=4 enable-runtime-library=false"



.PRECIOUS: %.llvm.mlir
.PRECIOUS: %.ll
.PRECIOUS: %.S

%.llvm.mlir: %.mlir
	$(OPT) $(OPTFLAGS) -o $@ $<

%.ll: %.llvm.mlir
	$(TRANSLATE) -mlir-to-llvmir -o $@ $<

%.S: %.ll
	llc -o $@ $<

%: %.S
	gcc -mabi=lp64d -o $@ $<
