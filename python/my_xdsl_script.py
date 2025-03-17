from xdsl.dialects.builtin import IntAttr
from xdsl.printer import Printer


# Printer used to pretty-print MLIR data structures
printer = Printer()
# Attribute definitions usually define custom `__init__` to simplify their creation
my_int = IntAttr(42)
printer.print_attribute(my_int)