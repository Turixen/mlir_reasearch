from mlir.ir import Context, Module

with Context() as ctx:
  # IR construction using `ctx` as context.

  # For example, parsing an MLIR module from string requires the context.
  Module.parse("builtin.module {}")