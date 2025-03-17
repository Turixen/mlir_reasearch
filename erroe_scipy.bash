-

error
  error: subprocess-exited-with-error
  
  × Preparing metadata (pyproject.toml) did not run successfully.
  │ exit code: 1
  ╰─> [1727 lines of output]
      + meson setup /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4 /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/.mesonpy-2oy52w6f -Dbuildtype=release -Db_ndebug=if-release -Db_vscrt=md --native-file=/tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/.mesonpy-2oy52w6f/meson-python-native-file.ini
      The Meson build system
      Version: 1.7.0
      Source dir: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4
      Build dir: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/.mesonpy-2oy52w6f
      Build type: native build
      Project name: scipy
      Project version: 1.15.2
      C compiler for the host machine: ccache cc (gcc 14.0.1 "cc (GCC) 14.0.1 20240411 (Red Hat 14.0.1-0)")
      C linker for the host machine: cc ld.bfd 2.42.50.20240624
      C++ compiler for the host machine: ccache c++ (gcc 14.0.1 "c++ (GCC) 14.0.1 20240411 (Red Hat 14.0.1-0)")
      C++ linker for the host machine: c++ ld.bfd 2.42.50.20240624
      Cython compiler for the host machine: cython (cython 3.0.12)
      Host machine cpu family: riscv64
      Host machine cpu: riscv64
      Program python found: YES (/root/gmastrotucci/benchmark/vector/myenv3.11/bin/python3.11)
      Found pkg-config: YES (/usr/bin/pkg-config) 2.1.1
      Run-time dependency python found: YES 3.11
      Program cython found: YES (/tmp/pip-build-env-gx8jv6g9/overlay/bin/cython)
      Compiler for C supports arguments -Wno-unused-but-set-variable: YES
      Compiler for C supports arguments -Wno-unused-function: YES
      Compiler for C supports arguments -Wno-conversion: YES
      Compiler for C supports arguments -Wno-misleading-indentation: YES
      Library m found: YES
      Fortran compiler for the host machine: gfortran (gcc 14.0.1 "GNU Fortran (GCC) 14.0.1 20240411 (Red Hat 14.0.1-0)")
      Fortran linker for the host machine: gfortran ld.bfd 2.42.50.20240624
      ../meson.build:86: WARNING: Consider using the built-in option for language standard version instead of using "-std=legacy".
      Compiler for Fortran supports arguments -Wno-conversion: YES
      Checking if "-Wl,--version-script" links: YES
      Program tools/generate_f2pymod.py found: YES (/root/gmastrotucci/benchmark/vector/myenv3.11/bin/python3.11 /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/tools/generate_f2pymod.py)
      Program scipy/_build_utils/tempita.py found: YES (/root/gmastrotucci/benchmark/vector/myenv3.11/bin/python3.11 /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/_build_utils/tempita.py)
      Program pythran found: YES 0.17.0 0.17.0 (/tmp/pip-build-env-gx8jv6g9/overlay/bin/pythran)
      Found CMake: /usr/bin/cmake (3.28.3)
      WARNING: CMake Toolchain: Failed to determine CMake compilers state
      Run-time dependency xsimd found: NO (tried pkgconfig and cmake)
      Run-time dependency threads found: YES
      numpy-config found: YES (/tmp/pip-build-env-gx8jv6g9/overlay/bin/numpy-config) 2.2.3
      Run-time dependency numpy found: YES 2.2.3
      Library npymath found: YES
      pybind11-config found: YES (/tmp/pip-build-env-gx8jv6g9/overlay/bin/pybind11-config) 2.13.6
      Run-time dependency pybind11 found: YES 2.13.6
      Checking if "thread_local" compiles: NO
      Checking if "_Thread_local" compiles: YES
      Checking if "__thread" compiles: YES
      Configuring scipy_config.h using configuration
      Program f2py found: YES (/tmp/pip-build-env-gx8jv6g9/overlay/bin/f2py)
      Run-time dependency scipy-openblas found: NO (tried pkgconfig)
      Run-time dependency openblas found: YES 0.3.29.dev
      Dependency openblas found: YES 0.3.29.dev (cached)
      Compiler for C supports arguments -Wno-maybe-uninitialized: YES
      Compiler for C supports arguments -Wno-discarded-qualifiers: YES
      Compiler for C supports arguments -Wno-empty-body: YES
      Compiler for C supports arguments -Wno-implicit-function-declaration: YES
      Compiler for C supports arguments -Wno-parentheses: YES
      Compiler for C supports arguments -Wno-switch: YES
      Compiler for C supports arguments -Wno-unused-label: YES
      Compiler for C supports arguments -Wno-unused-result: YES
      Compiler for C supports arguments -Wno-unused-variable: YES
      Compiler for C supports arguments -Wno-unused-but-set-variable: YES (cached)
      Compiler for C++ supports arguments -Wno-bitwise-instead-of-logical: NO
      Compiler for C++ supports arguments -Wno-cpp: YES
      Compiler for C++ supports arguments -Wno-class-memaccess: YES
      Compiler for C++ supports arguments -Wno-deprecated-declarations: YES
      Compiler for C++ supports arguments -Wno-deprecated-builtins: NO
      Compiler for C++ supports arguments -Wno-format-truncation: YES
      Compiler for C++ supports arguments -Wno-non-virtual-dtor: YES
      Compiler for C++ supports arguments -Wno-sign-compare: YES
      Compiler for C++ supports arguments -Wno-switch: YES
      Compiler for C++ supports arguments -Wno-terminate: YES
      Compiler for C++ supports arguments -Wno-unused-but-set-variable: YES
      Compiler for C++ supports arguments -Wno-unused-function: YES
      Compiler for C++ supports arguments -Wno-unused-local-typedefs: YES
      Compiler for C++ supports arguments -Wno-unused-variable: YES
      Compiler for C++ supports arguments -Wno-int-in-bool-context: YES
      Compiler for Fortran supports arguments -Wno-argument-mismatch: YES
      Compiler for Fortran supports arguments -Wno-conversion: YES (cached)
      Compiler for Fortran supports arguments -Wno-intrinsic-shadow: YES
      Compiler for Fortran supports arguments -Wno-maybe-uninitialized: YES
      Compiler for Fortran supports arguments -Wno-surprising: YES
      Compiler for Fortran supports arguments -Wno-uninitialized: YES
      Compiler for Fortran supports arguments -Wno-unused-dummy-argument: YES
      Compiler for Fortran supports arguments -Wno-unused-label: YES
      Compiler for Fortran supports arguments -Wno-unused-variable: YES
      Compiler for Fortran supports arguments -Wno-tabs: YES
      Compiler for Fortran supports arguments -Wno-argument-mismatch: YES (cached)
      Compiler for Fortran supports arguments -Wno-conversion: YES (cached)
      Compiler for Fortran supports arguments -Wno-maybe-uninitialized: YES (cached)
      Compiler for Fortran supports arguments -Wno-unused-dummy-argument: YES (cached)
      Compiler for Fortran supports arguments -Wno-unused-label: YES (cached)
      Compiler for Fortran supports arguments -Wno-unused-variable: YES (cached)
      Compiler for Fortran supports arguments -Wno-tabs: YES (cached)
      Checking if "Check atomic builtins without -latomic" links: YES
      Configuring __config__.py using configuration
      Checking for function "open_memstream" : YES
      Configuring messagestream_config.h using configuration
      Program _generate_pyx.py found: YES (/root/gmastrotucci/benchmark/vector/myenv3.11/bin/python3.11 /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/special/_generate_pyx.py)
      Program _generate_pyx.py found: YES (/root/gmastrotucci/benchmark/vector/myenv3.11/bin/python3.11 /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/linalg/_generate_pyx.py)
      Program ../_generate_sparsetools.py found: YES (/root/gmastrotucci/benchmark/vector/myenv3.11/bin/python3.11 /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/sparse/sparsetools/../_generate_sparsetools.py)
      Checking for size of "void*" : 8
      Compiler for Fortran supports arguments -w: YES
      Checking for size of "void*" : 8
      
      Executing subproject highs
      
      highs| Project name: highs
      highs| Project version: 1.8.0
      highs| C compiler for the host machine: ccache cc (gcc 14.0.1 "cc (GCC) 14.0.1 20240411 (Red Hat 14.0.1-0)")
      highs| C linker for the host machine: cc ld.bfd 2.42.50.20240624
      highs| C++ compiler for the host machine: ccache c++ (gcc 14.0.1 "c++ (GCC) 14.0.1 20240411 (Red Hat 14.0.1-0)")
      highs| C++ linker for the host machine: c++ ld.bfd 2.42.50.20240624
      highs| Compiler for C++ supports arguments -Wno-invalid-offsetof: YES
      highs| Compiler for C++ supports arguments -Wno-maybe-uninitialized: YES
      highs| Compiler for C++ supports arguments -Wno-reorder: YES
      highs| Compiler for C++ supports arguments -Wno-reorder-ctor: NO
      highs| Compiler for C++ supports arguments -Wno-sometimes-uninitialized: NO
      highs| Compiler for C++ supports arguments -Wno-unused-but-set-variable: YES (cached)
      highs| Compiler for C++ supports arguments -Wno-unused-variable: YES (cached)
      highs| Compiler for C++ supports arguments -Wno-use-after-free: YES
      highs| Compiler for C++ supports arguments -Wno-comment: YES
      highs| Compiler for C supports arguments -Wno-comment: YES
      highs| Compiler for C supports arguments -Wno-invalid-offsetof: NO
      highs| Compiler for C supports arguments -Wno-maybe-uninitialized: YES (cached)
      highs| Compiler for C supports arguments -Wno-sometimes-uninitialized: NO
      highs| Compiler for C supports arguments -Wno-unused-label: YES (cached)
      highs| Compiler for C supports arguments -Wno-use-after-free: YES
      highs| Compiler for C supports arguments -Wno-unused-but-set-variable: YES (cached)
      highs| Compiler for C supports arguments -Wno-unused-variable: YES (cached)
      highs| Compiler for C supports arguments -Wno-use-after-free: YES (cached)
      highs| Dependency threads found: YES unknown (cached)
      highs| Checking if "Check atomic builtins without -latomic" links: YES (cached)
      highs| Dependency zlib skipped: feature use_zlib disabled
      highs| Checking if "mm_pause check" compiles: NO
      highs| Checking if "builtin_clz check" compiles: YES
      highs| Configuring HConfig.h.meson.interim using configuration
      highs| Build targets in project: 145
      highs| Subproject highs finished.
      
      Build targets in project: 195
      
      scipy 1.15.2
      
        Subprojects
          highs       : YES
      
        User defined options
          Native files: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/.mesonpy-2oy52w6f/meson-python-native-file.ini
          b_ndebug    : if-release
          b_vscrt     : md
          buildtype   : release
      
      Found ninja-1.12.1 at /usr/bin/ninja
      + /usr/bin/ninja
      [1/1465] Copying file scipy/optimize/cython_optimize/__init__.py
      [2/1465] Scanning modules
      [3/1465] Scanning modules
      [4/1465] Scanning modules
      [5/1465] Scanning modules
      [6/1465] Scanning modules
      [7/1465] Scanning modules
      [8/1465] Scanning modules
      [9/1465] Scanning modules
      [10/1465] Scanning modules
      [11/1465] Copying file scipy/_lib/__init__.py
      [12/1465] Copying file scipy/__init__.py
      [13/1465] Copying file scipy/_lib/_ccallback_c.pxd
      [14/1465] Copying file scipy/_lib/ccallback.pxd
      [15/1465] Copying file scipy/_lib/messagestream.pxd
      [16/1465] Copying file scipy/special/__init__.py
      [17/1465] Copying file scipy/special/_boxcox.pxd
      [18/1465] Copying file scipy/special/_cdflib_wrappers.pxd
      [19/1465] Copying file scipy/special/_agm.pxd
      [20/1465] Copying file scipy/special/_convex_analysis.pxd
      [21/1465] Copying file scipy/special/_complexstuff.pxd
      [22/1465] Scanning modules
      [23/1465] Copying file scipy/special/_ellip_harm_2.pxd
      [24/1465] Copying file scipy/special/_cunity.pxd
      [25/1465] Copying file scipy/special/_ellip_harm.pxd
      [26/1465] Copying file scipy/special/_hypergeometric.pxd
      [27/1465] Copying file scipy/special/_ellipk.pxd
      [28/1465] Copying file scipy/special/_legacy.pxd
      [29/1465] Compiling C object scipy/libdummy_g77_abi_wrappers.a.p/_build_utils_src_wrap_dummy_g77_abi.c.o
      [30/1465] Copying file scipy/special/_factorial.pxd
      [31/1465] Copying file scipy/special/_ndtri_exp.pxd
      [32/1465] Copying file scipy/special/_sici.pxd
      [33/1465] Copying file scipy/special/_spence.pxd
      [34/1465] Compiling C object scipy/special/libsf_error_state.so.p/sf_error_state.c.o
      [35/1465] Copying file scipy/special/_hyp0f1.pxd
      [36/1465] Copying file scipy/special/orthogonal_eval.pxd
      [37/1465] Copying file scipy/special/_xlogy.pxd
      [38/1465] Copying file scipy/special/sf_error.pxd
      [39/1465] Copying file scipy/special/_ufuncs_extra_code.pxi
      [40/1465] Copying file scipy/special/__init__.pxd
      [41/1465] Copying file scipy/special/cython_special.pxd
      [42/1465] Generating scipy/special/cython_special with a custom command
      [43/1465] Copying file scipy/linalg/__init__.pxd
      [44/1465] Copying file scipy/linalg/_cythonized_array_utils.pxd
      [45/1465] Generating scipy/sparse/_csparsetools_pyx with a custom command
      [46/1465] Copying file scipy/linalg/__init__.py
      [47/1465] Generating scipy/linalg/cython_linalg with a custom command
      [48/1465] Copying file scipy/special/_ufuncs_extra_code_common.pxi
      [49/1465] Generating scipy/linalg/_decomp_update with a custom command
      [50/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_sgetu0.F.o
      [51/1465] Copying file scipy/sparse/csgraph/parameters.pxi
      [52/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_printstat.F.o
      [53/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_ssafescal.F.o
      [54/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_sreorth.F.o
      [55/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_sritzvec.F.o
      [56/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_smgs.risc.F.o
      [57/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_slansvd.F.o
      [58/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_sblasext.F.o
      [59/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_sgemm_ovwr.F.o
      [60/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_sbsvd.F.o
      [61/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_dgetu0.F.o
      [62/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_slansvd_irl.F.o
      [63/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_dgemm_ovwr.F.o
      [64/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_dritzvec.F.o
      [65/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_dsafescal.F.o
      [66/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_dlansvd.F.o
      [67/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_dreorth.F.o
      [68/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_dblasext.F.o
      [69/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_dbsvd.F.o
      [70/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_ccdotc.F.o
      [71/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_printstat.F.o
      [72/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_dmgs.risc.F.o
      [73/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_cgetu0.F.o
      [74/1465] Compiling C object scipy/lib_fortranobject.a.p/916d703115af44ef69109e0f71f64041392e9715_site-packages_numpy_f2py_src_fortranobject.c.o
      [75/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_dlansvd_irl.F.o
      [76/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__spropack.a.p/PROPACK_single_slanbpro.F.o
      [77/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_clansvd.F.o
      [78/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_critzvec.F.o
      [79/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_cblasext.F.o
      [80/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_creorth.F.o
      [81/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_csafescal.F.o
      [82/1465] Generating from 'spropack.pyf'
      [83/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_printstat.F.o
      [84/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_clansvd_irl.F.o
      [85/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_cmgs.risc.F.o
      [86/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_sgemm_ovwr.F.o
      [87/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__dpropack.a.p/PROPACK_double_dlanbpro.F.o
      [88/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_sblasext.F.o
      [89/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_sbsvd.F.o
      [90/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_zzdotc.f.o
      [91/1465] Generating from 'dpropack.pyf'
      [92/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_dblasext.F.o
      [93/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_zgetu0.F.o
      [94/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_clanbpro.F.o
      [95/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_printstat.F.o
      [96/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_zreorth.F.o
      [97/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_dbsvd.F.o
      [98/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_zsafescal.F.o
      [99/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_dgemm_ovwr.F.o
      [100/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_zritzvec.F.o
      [101/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_zlansvd.F.o
      [102/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_ccdotc.f.o
      [103/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_zmgs.risc.F.o
      [104/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_zblasext.F.o
      [105/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_zlansvd_irl.F.o
      [106/1465] Generating from 'cpropack.pyf'
      [107/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_cgetv0.f.o
      [108/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_cnaupd.f.o
      [109/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_cneigh.f.o
      [110/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_cngets.f.o
      [111/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_cstatn.f.o
      [112/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_cnaitr.f.o
      [113/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_cnaup2.f.o
      [114/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_zlanbpro.F.o
      [115/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__cpropack.a.p/PROPACK_complex8_cgemm_ovwr.F.o
      [116/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dnaupd.f.o
      [117/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_csortc.f.o
      [118/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dgetv0.f.o
      [119/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dnconv.f.o
      [120/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_cnapps.f.o
      [121/1465] Generating from 'zpropack.pyf'
      [122/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dneigh.f.o
      [123/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dnaitr.f.o
      [124/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dngets.f.o
      [125/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dnaup2.f.o
      [126/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_cneupd.f.o
      [127/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dseigt.f.o
      [128/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dsconv.f.o
      [129/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dsaupd.f.o
      [130/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dsgets.f.o
      [131/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dsaitr.f.o
      [132/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dstatn.f.o
      [133/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dsesrt.f.o
      [134/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dsaup2.f.o
      [135/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dsortr.f.o
      [136/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dstats.f.o
      [137/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dsapps.f.o
      [138/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dnapps.f.o
      [139/1465] Compiling Fortran object scipy/sparse/linalg/_propack/liblib__zpropack.a.p/PROPACK_complex16_zgemm_ovwr.F.o
      [140/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dsortc.f.o
      [141/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_sgetv0.f.o
      [142/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dneupd.f.o
      [143/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_snconv.f.o
      [144/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_snaupd.f.o
      [145/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_sngets.f.o
      [146/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_sneigh.f.o
      [147/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dseupd.f.o
      [148/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_ssconv.f.o
      [149/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_snaitr.f.o
      [150/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_sseigt.f.o
      [151/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_ssaupd.f.o
      [152/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_dstqrb.f.o
      [153/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_snaup2.f.o
      [154/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_ssaitr.f.o
      [155/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_ssgets.f.o
      [156/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_sstatn.f.o
      [157/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_sstats.f.o
      [158/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_ssesrt.f.o
      [159/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_ssaup2.f.o
      [160/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_ssapps.f.o
      [161/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_ssortr.f.o
      [162/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_ssortc.f.o
      [163/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_zgetv0.f.o
      [164/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_snapps.f.o
      [165/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_znaupd.f.o
      [166/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_zneigh.f.o
      [167/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_zngets.f.o
      [168/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_zstatn.f.o
      [169/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_sneupd.f.o
      [170/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_zzdotc.f.o
      [171/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_znaitr.f.o
      [172/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_znaup2.f.o
      [173/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_icnteq.f.o
      [174/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_sseupd.f.o
      [175/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_icopy.f.o
      [176/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_iset.f.o
      [177/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_sstqrb.f.o
      [178/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_zsortc.f.o
      [179/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_dvout.f.o
      [180/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_second_NONE.f.o
      [181/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_iswap.f.o
      [182/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_cvout.f.o
      [183/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_znapps.f.o
      [184/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_ivout.f.o
      [185/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_SRC_zneupd.f.o
      [186/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_svout.f.o
      [187/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_dmout.f.o
      [188/1465] Copying file scipy/stats/_biasedurn.pxd
      [189/1465] Copying file scipy/stats/_stats.pxd
      [190/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_cmout.f.o
      [191/1465] Copying file scipy/stats/__init__.py
      [192/1465] Copying file scipy/stats/_unuran/__init__.py
      [193/1465] Copying file scipy/stats/_unuran/unuran.pxd
      [194/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_smout.f.o
      [195/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_zvout.f.o
      [196/1465] Copying file scipy/optimize/cython_optimize.pxd
      [197/1465] Copying file scipy/optimize/__init__.py
      [198/1465] Copying file scipy/optimize/__init__.pxd
      [199/1465] Copying file scipy/optimize/cython_optimize/c_zeros.pxd
      [200/1465] Generating scipy/optimize/cython_optimize/_zeros_pyx with a custom command
      [201/1465] Copying file scipy/optimize/cython_optimize/_zeros.pxd
      [202/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a.p/ARPACK_UTIL_zmout.f.o
      [203/1465] Generating from 'mvn.pyf'
      [204/1465] Generating subprojects/highs/src/HConfig.h with a custom command
      [205/1465] Compiling Fortran object scipy/integrate/libmach_lib.a.p/mach_xerror.f.o
      [206/1465] Copying file scipy/spatial/_qhull.pxd
      [207/1465] Compiling Fortran object scipy/integrate/libmach_lib.a.p/mach_d1mach.f.o
      [208/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_blkdta000.f.o
      [209/1465] Copying file scipy/spatial/setlist.pxd
      [210/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_bnorm.f.o
      [211/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_fnorm.f.o
      [212/1465] Generating from 'cobyla/cobyla.pyf'
      [213/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_ewset.f.o
      [214/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_solsy.f.o
      [215/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_intdy.f.o
      [216/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_srcma.f.o
      [217/1465] Generating from 'test_fortran.pyf'
      [218/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_vmnorm.f.o
      [219/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_cfode.f.o
      [220/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_xerrwv.f.o
      [221/1465] Generating from 'slsqp/slsqp.pyf'
      [222/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_xsetun.f.o
      [223/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_xsetf.f.o
      [224/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_prja.f.o
      [225/1465] Generating scipy/sparse/linalg/_eigen/arpack/arpack_module with a custom command
      [226/1465] Generating from 'vode.pyf'
      [227/1465] Generating from 'lsoda.pyf'
      [228/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_bispeu.f.o
      [229/1465] Compiling Fortran object scipy/integrate/libdop_lib.a.p/dop_dopri5.f.o
      [230/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_bispev.f.o
      [231/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_lsoda.f.o
      [232/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_cocosp.f.o
      [233/1465] Generating from 'dop.pyf'
      [234/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_concon.f.o
      [235/1465] Compiling Fortran object scipy/integrate/liblsoda_lib.a.p/odepack_stoda.f.o
      [236/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_cualde.f.o
      [237/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_dblint.f.o
      [238/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_evapol.f.o
      [239/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_curev.f.o
      [240/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_curfit.f.o
      [241/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_clocur.f.o
      [242/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fourco.f.o
      [243/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpadno.f.o
      [244/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpader.f.o
      [245/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpback.f.o
      [246/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_concur.f.o
      [247/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpadpo.f.o
      [248/1465] Compiling Fortran object scipy/integrate/libdop_lib.a.p/dop_dop853.f.o
      [249/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpbspl.f.o
      [250/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpchec.f.o
      [251/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpbacp.f.o
      [252/1465] Generating from 'tests/test_odeint_banded.pyf'
      [253/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpched.f.o
      [254/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpchep.f.o
      [255/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpbisp.f.o
      [256/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpcsin.f.o
      [257/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpcyt1.f.o
      [258/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpbfout.f.o
      [259/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpcuro.f.o
      [260/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpcoco.f.o
      [261/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpdeno.f.o
      [262/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpcyt2.f.o
      [263/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpgivs.f.o
      [264/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpfrno.f.o
      [265/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpdisc.f.o
      [266/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpcons.f.o
      [267/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpcurf.f.o
      [268/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpgrpa.f.o
      [269/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpinst.f.o
      [270/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpcosp.f.o
      [271/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpknot.f.o
      [272/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpgrre.f.o
      [273/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fporde.f.o
      [274/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpintb.f.o
      [275/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpopdi.f.o
      [276/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpopsp.f.o
      [277/1465] Compiling Fortran object scipy/integrate/libvode_lib.a.p/odepack_vode.f.o
      [278/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fppasu.f.o
      [279/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fppocu.f.o
      [280/1465] Compiling Fortran object scipy/integrate/libvode_lib.a.p/odepack_zvode.f.o
      [281/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fprati.f.o
      [282/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fprota.f.o
      [283/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpclos.f.o
      [284/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fppara.f.o
      [285/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fprppo.f.o
      [286/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fprpsp.f.o
      [287/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpseno.f.o
      [288/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fppogr.f.o
      [289/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fprank.f.o
      [290/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpregr.f.o
      [291/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpsuev.f.o
      [292/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpsysy.f.o
      [293/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fptrnp.f.o
      [294/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_insert.f.o
      [295/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpgrdi.f.o
      [296/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_parcur.f.o
      [297/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpspgr.f.o
      [298/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_parder.f.o
      [299/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_percur.f.o
      [300/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_parsur.f.o
      [301/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_pardeu.f.o
      [302/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_polar.f.o
      [303/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_profil.f.o
      [304/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_regrid.f.o
      [305/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_pogrid.f.o
      [306/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpperi.f.o
      [307/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_spalde.f.o
      [308/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fptrpe.f.o
      [309/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_splint.f.o
      [310/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpgrsp.f.o
      [311/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_splev.f.o
      [312/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_sphere.f.o
      [313/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_surev.f.o
      [314/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_spgrid.f.o
      [315/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_sproot.f.o
      [316/1465] Linking static target scipy/lib_fortranobject.a
      [317/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_splder.f.o
      [318/1465] Linking static target scipy/libdummy_g77_abi_wrappers.a
      [319/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_pardtc.f.o
      [320/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_surfit.f.o
      [321/1465] Linking target scipy/special/libsf_error_state.so
      [322/1465] Compiling C object scipy/special/libcdflib.a.p/cdflib.c.o
      [323/1465] Scanning modules
      [324/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fppola.f.o
      [325/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpsurf.f.o
      [326/1465] Compiling Fortran object scipy/interpolate/libfitpack_lib.a.p/fitpack_fpsphe.f.o
      [327/1465] Generating 'scipy/_lib/_test_deprecation_call.cpython-311-riscv64-linux-gnu.so.p/_test_deprecation_call.c'
      [328/1465] Generating 'scipy/_lib/_test_deprecation_def.cpython-311-riscv64-linux-gnu.so.p/_test_deprecation_def.c'
      [329/1465] Generating 'scipy/_lib/_ccallback_c.cpython-311-riscv64-linux-gnu.so.p/_ccallback_c.c'
      [330/1465] Generating from 'src/dfitpack.pyf'
      [331/1465] Generating 'scipy/special/_comb.cpython-311-riscv64-linux-gnu.so.p/_comb.c'
      [332/1465] Generating 'scipy/special/_specfun.cpython-311-riscv64-linux-gnu.so.p/_specfun.cpp'
      [333/1465] Generating 'scipy/special/_ufuncs_cxx.cpython-311-riscv64-linux-gnu.so.p/_ufuncs_cxx.cpp'
      [334/1465] Generating 'scipy/_lib/messagestream.cpython-311-riscv64-linux-gnu.so.p/messagestream.c'
      [335/1465] Generating 'scipy/special/_ellip_harm_2.cpython-311-riscv64-linux-gnu.so.p/_ellip_harm_2.c'
      [336/1465] Generating 'scipy/special/_test_internal.cpython-311-riscv64-linux-gnu.so.p/_test_internal.c'
      [337/1465] Generating scipy/linalg/fblas_module with a custom command
      [338/1465] Generating 'scipy/linalg/_solve_toeplitz.cpython-311-riscv64-linux-gnu.so.p/_solve_toeplitz.c'
      [339/1465] Generating 'scipy/linalg/_matfuncs_sqrtm_triu.cpython-311-riscv64-linux-gnu.so.p/_matfuncs_sqrtm_triu.c'
      [340/1465] Generating 'scipy/linalg/_linalg_pythran.cpython-311-riscv64-linux-gnu.so.p/_linalg_pythran.cpp'
      [341/1465] Generating 'scipy/linalg/cython_blas.cpython-311-riscv64-linux-gnu.so.p/cython_blas.c'
      [342/1465] Generating scipy/sparse/sparsetools/_sparsetools_headers with a custom command
      [343/1465] Generating 'scipy/linalg/_decomp_lu_cython.cpython-311-riscv64-linux-gnu.so.p/_decomp_lu_cython.c'
      [344/1465] Generating 'scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so.p/_ufuncs.c'
      [345/1465] Generating 'scipy/sparse/csgraph/_flow.cpython-311-riscv64-linux-gnu.so.p/_flow.c'
      [346/1465] Generating 'scipy/linalg/_decomp_interpolative.cpython-311-riscv64-linux-gnu.so.p/_decomp_interpolative.c'
      [347/1465] Generating 'scipy/sparse/_csparsetools.cpython-311-riscv64-linux-gnu.so.p/_csparsetools.c'
      [348/1465] Generating 'scipy/sparse/csgraph/_matching.cpython-311-riscv64-linux-gnu.so.p/_matching.c'
      [349/1465] Generating 'scipy/sparse/csgraph/_reordering.cpython-311-riscv64-linux-gnu.so.p/_reordering.c'
      [350/1465] Linking static target scipy/sparse/linalg/_propack/liblib__spropack.a
      [351/1465] Generating 'scipy/sparse/csgraph/_min_spanning_tree.cpython-311-riscv64-linux-gnu.so.p/_min_spanning_tree.c'
      [352/1465] Linking static target scipy/sparse/linalg/_propack/liblib__dpropack.a
      [353/1465] Scanning modules
      [354/1465] Linking static target scipy/sparse/linalg/_propack/liblib__cpropack.a
      [355/1465] Scanning modules
      [356/1465] Linking static target scipy/sparse/linalg/_propack/liblib__zpropack.a
      [357/1465] Generating 'scipy/linalg/_decomp_update.cpython-311-riscv64-linux-gnu.so.p/_decomp_update.c'
      [358/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ccolumn_bmod.c.o
      [359/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ccolumn_dfs.c.o
      [360/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ccopy_to_ucol.c.o
      [361/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cdiagonal.c.o
      [362/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cgscon.c.o
      [363/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cgsequ.c.o
      [364/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cgsisx.c.o
      [365/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cgsitrf.c.o
      [366/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cgsrfs.c.o
      [367/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cgssv.c.o
      [368/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cgssvx.c.o
      [369/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cgstrf.c.o
      [370/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cgstrs.c.o
      [371/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_clacon2.c.o
      [372/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_clangs.c.o
      [373/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_claqgs.c.o
      [374/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cldperm.c.o
      [375/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cmemory.c.o
      [376/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cmyblas2.c.o
      [377/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_colamd.c.o
      [378/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cpanel_bmod.c.o
      [379/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cpanel_dfs.c.o
      [380/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cpivotL.c.o
      [381/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cpivotgrowth.c.o
      [382/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cpruneL.c.o
      [383/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_creadMM.c.o
      [384/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_creadhb.c.o
      [385/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_creadrb.c.o
      [386/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_creadtriple.c.o
      [387/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_csnode_bmod.c.o
      [388/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_csnode_dfs.c.o
      [389/1465] Scanning modules
      [390/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_csp_blas2.c.o
      [391/1465] Scanning modules
      [392/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_csp_blas3.c.o
      [393/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_cutil.c.o
      [394/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dGetDiagU.c.o
      [395/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dcolumn_bmod.c.o
      [396/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dcolumn_dfs.c.o
      [397/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dcomplex.c.o
      [398/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dcopy_to_ucol.c.o
      [399/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ddiagonal.c.o
      [400/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dgscon.c.o
      [401/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dgsequ.c.o
      [402/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dgsitrf.c.o
      [403/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dgsisx.c.o
      [404/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dgsrfs.c.o
      [405/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dgssv.c.o
      [406/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dgssvx.c.o
      [407/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dgstrf.c.o
      [408/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dlacon2.c.o
      [409/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dgstrs.c.o
      [410/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dlangs.c.o
      [411/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dlaqgs.c.o
      [412/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dldperm.c.o
      [413/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dmach.c.o
      [414/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dmemory.c.o
      [415/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dmyblas2.c.o
      [416/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dpanel_bmod.c.o
      [417/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dpanel_dfs.c.o
      [418/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dpivotL.c.o
      [419/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dpivotgrowth.c.o
      [420/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dpruneL.c.o
      [421/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dreadMM.c.o
      [422/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dreadhb.c.o
      [423/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dreadrb.c.o
      [424/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dreadtriple.c.o
      [425/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dsnode_bmod.c.o
      [426/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dsnode_dfs.c.o
      [427/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dsp_blas2.c.o
      [428/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dsp_blas3.c.o
      [429/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dutil.c.o
      [430/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_dzsum1.c.o
      [431/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_get_perm_c.c.o
      [432/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_icmax1.c.o
      [433/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_heap_relax_snode.c.o
      [434/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_ccopy_to_ucol.c.o
      [435/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_ccolumn_dfs.c.o
      [436/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_cdrop_row.c.o
      [437/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_cpanel_dfs.c.o
      [438/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_csnode_dfs.c.o
      [439/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_cpivotL.c.o
      [440/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_dcolumn_dfs.c.o
      [441/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_dcopy_to_ucol.c.o
      [442/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_ddrop_row.c.o
      [443/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_dpanel_dfs.c.o
      [444/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_dpivotL.c.o
      [445/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_dsnode_dfs.c.o
      [446/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_heap_relax_snode.c.o
      [447/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_relax_snode.c.o
      [448/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_scolumn_dfs.c.o
      [449/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_spanel_dfs.c.o
      [450/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_scopy_to_ucol.c.o
      [451/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_sdrop_row.c.o
      [452/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_spivotL.c.o
      [453/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_ssnode_dfs.c.o
      [454/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_zcolumn_dfs.c.o
      [455/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_zpanel_dfs.c.o
      [456/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_zcopy_to_ucol.c.o
      [457/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_zdrop_row.c.o
      [458/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_zpivotL.c.o
      [459/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_input_error.c.o
      [460/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ilu_zsnode_dfs.c.o
      [461/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_mark_relax.c.o
      [462/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_izmax1.c.o
      [463/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_memory.c.o
      [464/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_mmd.c.o
      [465/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_qselect.c.o
      [466/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_relax_snode.c.o
      [467/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_scolumn_bmod.c.o
      [468/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_scolumn_dfs.c.o
      [469/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_scomplex.c.o
      [470/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_scsum1.c.o
      [471/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_scopy_to_ucol.c.o
      [472/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sgscon.c.o
      [473/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sdiagonal.c.o
      [474/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sgsequ.c.o
      [475/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sgsitrf.c.o
      [476/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sgsisx.c.o
      [477/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sgssv.c.o
      [478/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sgsrfs.c.o
      [479/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sgssvx.c.o
      [480/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sgstrs.c.o
      [481/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sgstrf.c.o
      [482/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_slacon2.c.o
      [483/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_slangs.c.o
      [484/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sldperm.c.o
      [485/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_slaqgs.c.o
      [486/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_smach.c.o
      [487/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_smemory.c.o
      [488/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_smyblas2.c.o
      [489/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sp_coletree.c.o
      [490/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sp_ienv.c.o
      [491/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sp_preorder.c.o
      [492/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_spanel_dfs.c.o
      [493/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_spanel_bmod.c.o
      [494/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_spivotL.c.o
      [495/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_spivotgrowth.c.o
      [496/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_spruneL.c.o
      [497/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sreadMM.c.o
      [498/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sreadtriple.c.o
      [499/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sreadrb.c.o
      [500/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sreadhb.c.o
      [501/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ssnode_bmod.c.o
      [502/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ssp_blas2.c.o
      [503/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ssnode_dfs.c.o
      [504/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_ssp_blas3.c.o
      [505/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_superlu_timer.c.o
      [506/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_util.c.o
      [507/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_sutil.c.o
      [508/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zcolumn_bmod.c.o
      [509/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zcopy_to_ucol.c.o
      [510/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zcolumn_dfs.c.o
      [511/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zdiagonal.c.o
      [512/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zgscon.c.o
      [513/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zgsequ.c.o
      [514/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zgsisx.c.o
      [515/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zgsitrf.c.o
      [516/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zgsrfs.c.o
      [517/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zgssv.c.o
      [518/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zgstrf.c.o
      [519/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zgssvx.c.o
      [520/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zgstrs.c.o
      [521/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zlacon2.c.o
      [522/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zlangs.c.o
      [523/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zlaqgs.c.o
      [524/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zmemory.c.o
      [525/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zldperm.c.o
      [526/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zmyblas2.c.o
      [527/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zpanel_bmod.c.o
      [528/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zpanel_dfs.c.o
      [529/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zpivotL.c.o
      [530/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zpivotgrowth.c.o
      [531/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zreadMM.c.o
      [532/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zpruneL.c.o
      [533/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zreadtriple.c.o
      [534/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zreadhb.c.o
      [535/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zreadrb.c.o
      [536/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zsnode_dfs.c.o
      [537/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zsnode_bmod.c.o
      [538/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zsp_blas3.c.o
      [539/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zsp_blas2.c.o
      [540/1465] Compiling C object scipy/sparse/linalg/_dsolve/libsuperlu_lib.a.p/SuperLU_SRC_zutil.c.o
      [541/1465] Linking static target scipy/sparse/linalg/_eigen/arpack/libarpack_lib.a
      [542/1465] Scanning modules
      [543/1465] Generating 'scipy/sparse/csgraph/_tools.cpython-311-riscv64-linux-gnu.so.p/_tools.c'
      [544/1465] Generating 'scipy/linalg/_cythonized_array_utils.cpython-311-riscv64-linux-gnu.so.p/_cythonized_array_utils.c'
      [545/1465] Scanning modules
      [546/1465] Generating 'scipy/special/cython_special.cpython-311-riscv64-linux-gnu.so.p/cython_special.c'
      [547/1465] Generating 'scipy/sparse/csgraph/_shortest_path.cpython-311-riscv64-linux-gnu.so.p/_shortest_path.c'
      [548/1465] Compiling C object scipy/stats/_levy_stable/lib_levyst.a.p/c_src_levyst.c.o
      [549/1465] Generating 'scipy/stats/_biasedurn.cpython-311-riscv64-linux-gnu.so.p/_biasedurn.cpp'
      [550/1465] Generating 'scipy/stats/_levy_stable/levyst.cpython-311-riscv64-linux-gnu.so.p/levyst.c'
      [551/1465] Generating 'scipy/stats/_stats_pythran.cpython-311-riscv64-linux-gnu.so.p/_stats_pythran.cpp'
      [552/1465] Scanning modules
      [553/1465] Generating 'scipy/stats/_ansari_swilk_statistics.cpython-311-riscv64-linux-gnu.so.p/_ansari_swilk_statistics.c'
      [554/1465] Generating 'scipy/stats/_qmc_cy.cpython-311-riscv64-linux-gnu.so.p/_qmc_cy.cpp'
      [555/1465] Generating 'scipy/sparse/csgraph/_traversal.cpython-311-riscv64-linux-gnu.so.p/_traversal.c'
      [556/1465] Compiling C++ object scipy/optimize/librectangular_lsap.a.p/rectangular_lsap_rectangular_lsap.cpp.o
      [557/1465] Compiling C object scipy/optimize/librootfind.a.p/Zeros_bisect.c.o
      [558/1465] Compiling C object scipy/optimize/librootfind.a.p/Zeros_brenth.c.o
      [559/1465] Compiling C object scipy/optimize/librootfind.a.p/Zeros_brentq.c.o
      [560/1465] Compiling C object scipy/optimize/librootfind.a.p/Zeros_ridder.c.o
      [561/1465] Generating 'scipy/stats/_sobol.cpython-311-riscv64-linux-gnu.so.p/_sobol.c'
      [562/1465] Scanning modules
      [563/1465] Scanning modules
      [564/1465] Generating 'scipy/io/matlab/_mio_utils.cpython-311-riscv64-linux-gnu.so.p/_mio_utils.c'
      [565/1465] Generating 'scipy/io/matlab/_streams.cpython-311-riscv64-linux-gnu.so.p/_streams.c'
      [566/1465] Generating 'scipy/optimize/_group_columns.cpython-311-riscv64-linux-gnu.so.p/_group_columns.cpp'
      [567/1465] Generating 'scipy/stats/_stats.cpython-311-riscv64-linux-gnu.so.p/_stats.c'
      [568/1465] Generating 'scipy/optimize/_moduleTNC.cpython-311-riscv64-linux-gnu.so.p/_moduleTNC.c'
      [569/1465] Generating 'scipy/stats/_rcont/rcont.cpython-311-riscv64-linux-gnu.so.p/rcont.c'
      [570/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_extern_filereaderlp_reader.cpp.o
      [571/1465] Generating 'scipy/io/matlab/_mio5_utils.cpython-311-riscv64-linux-gnu.so.p/_mio5_utils.c'
      [572/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_io_Filereader.cpp.o
      [573/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_io_FilereaderEms.cpp.o
      [574/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_interfaces_highs_c_api.cpp.o
      [575/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_io_FilereaderLp.cpp.o
      [576/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_io_FilereaderMps.cpp.o
      [577/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_io_HMPSIO.cpp.o
      [578/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_io_HMpsFF.cpp.o
      [579/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_io_LoadOptions.cpp.o
      [580/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_io_HighsIO.cpp.o
      [581/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_IpxWrapper.cpp.o
      [582/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsCallback.cpp.o
      [583/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsDebug.cpp.o
      [584/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_Highs.cpp.o
      [585/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsDeprecated.cpp.o
      [586/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsIis.cpp.o
      [587/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsInfo.cpp.o
      [588/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsInfoDebug.cpp.o
      [589/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsInterface.cpp.o
      [590/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsLp.cpp.o
      [591/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsLpUtils.cpp.o
      [592/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsModelUtils.cpp.o
      [593/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsOptions.cpp.o
      [594/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsRanging.cpp.o
      [595/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsSolution.cpp.o
      [596/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsSolve.cpp.o
      [597/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsSolutionDebug.cpp.o
      [598/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_lp_data_HighsStatus.cpp.o
      [599/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsConflictPool.cpp.o
      [600/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsCliqueTable.cpp.o
      [601/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsCutPool.cpp.o
      [602/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsCutGeneration.cpp.o
      [603/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsDebugSol.cpp.o
      [604/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsDomain.cpp.o
      [605/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsGFkSolve.cpp.o
      [606/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsDynamicRowMatrix.cpp.o
      [607/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsImplications.cpp.o
      [608/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsLpAggregator.cpp.o
      [609/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsLpRelaxation.cpp.o
      [610/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsMipAnalysis.cpp.o
      [611/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsMipSolverData.cpp.o
      [612/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsMipSolver.cpp.o
      [613/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsModkSeparator.cpp.o
      [614/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsNodeQueue.cpp.o
      [615/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsObjectiveFunction.cpp.o
      [616/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsPathSeparator.cpp.o
      [617/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsPseudocost.cpp.o
      [618/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsPrimalHeuristics.cpp.o
      [619/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsRedcostFixing.cpp.o
      [620/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsSearch.cpp.o
      [621/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsSeparation.cpp.o
      [622/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsSeparator.cpp.o
      [623/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsTransformedLp.cpp.o
      [624/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_mip_HighsTableauSeparator.cpp.o
      [625/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_model_HighsHessian.cpp.o
      [626/1465] Generating 'scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c'
      [627/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_model_HighsHessianUtils.cpp.o
      [628/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_parallel_HighsTaskExecutor.cpp.o
      [629/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_model_HighsModel.cpp.o
      [630/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_pdlp_CupdlpWrapper.cpp.o
      [631/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_presolve_HPresolveAnalysis.cpp.o
      [632/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_presolve_HPresolve.cpp.o
      [633/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_presolve_HighsPostsolveStack.cpp.o
      [634/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_presolve_ICrashUtil.cpp.o
      [635/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_presolve_HighsSymmetry.cpp.o
      [636/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_presolve_ICrash.cpp.o
      [637/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_presolve_ICrashX.cpp.o
      [638/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_presolve_PresolveComponent.cpp.o
      [639/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_qpsolver_a_asm.cpp.o
      [640/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_qpsolver_basis.cpp.o
      [641/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_qpsolver_a_quass.cpp.o
      [642/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_qpsolver_perturbation.cpp.o
      [643/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_qpsolver_ratiotest.cpp.o
      [644/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_qpsolver_quass.cpp.o
      [645/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_qpsolver_scaling.cpp.o
      [646/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HEkkControl.cpp.o
      [647/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HEkkDebug.cpp.o
      [648/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HEkk.cpp.o
      [649/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HEkkDual.cpp.o
      [650/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HEkkDualRHS.cpp.o
      [651/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HEkkDualMulti.cpp.o
      [652/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HEkkDualRow.cpp.o
      [653/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HEkkInterface.cpp.o
      [654/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HEkkPrimal.cpp.o
      [655/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HSimplex.cpp.o
      [656/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HSimplexNlaDebug.cpp.o
      [657/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HSimplexDebug.cpp.o
      [658/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HSimplexNla.cpp.o
      [659/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HSimplexNlaFreeze.cpp.o
      [660/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HSimplexNlaProductForm.cpp.o
      [661/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HSimplexReport.cpp.o
      [662/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_test_KktCh2.cpp.o
      [663/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_simplex_HighsSimplexAnalysis.cpp.o
      [664/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_test_DevKkt.cpp.o
      [665/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HFactorExtend.cpp.o
      [666/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HFactor.cpp.o
      [667/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HFactorDebug.cpp.o
      [668/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HFactorUtils.cpp.o
      [669/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HFactorRefactor.cpp.o
      [670/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HSet.cpp.o
      [671/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HighsLinearSumBounds.cpp.o
      [672/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HVectorBase.cpp.o
      [673/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HighsHash.cpp.o
      [674/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HighsMatrixPic.cpp.o
      [675/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HighsMatrixUtils.cpp.o
      [676/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HighsSort.cpp.o
      [677/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HighsSparseMatrix.cpp.o
      [678/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_pdlp_cupdlp_cupdlp_cs.c.o
      [679/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_stringutil.cpp.o
      [680/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_util_HighsUtils.cpp.o
      [681/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_pdlp_cupdlp_cupdlp_proj.c.o
      [682/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_pdlp_cupdlp_cupdlp_linalg.c.o
      [683/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_pdlp_cupdlp_cupdlp_restart.c.o
      [684/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_pdlp_cupdlp_cupdlp_scaling_cuda.c.o
      [685/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_pdlp_cupdlp_cupdlp_solver.c.o
      [686/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_pdlp_cupdlp_cupdlp_step.c.o
      [687/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_pdlp_cupdlp_cupdlp_utils.c.o
      [688/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_basiclu_factorize.c.o
      [689/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_basiclu_get_factors.c.o
      [690/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_basiclu_initialize.c.o
      [691/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_basiclu_object.c.o
      [692/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_basiclu_solve_dense.c.o
      [693/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_basiclu_solve_for_update.c.o
      [694/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_basiclu_solve_sparse.c.o
      [695/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_basiclu_update.c.o
      [696/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_build_factors.c.o
      [697/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_condest.c.o
      [698/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_dfs.c.o
      [699/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_file.c.o
      [700/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_factorize_bump.c.o
      [701/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_garbage_perm.c.o
      [702/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_initialize.c.o
      [703/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_internal.c.o
      [704/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_markowitz.c.o
      [705/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_matrix_norm.c.o
      [706/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_pivot.c.o
      [707/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_residual_test.c.o
      [708/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_singletons.c.o
      [709/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_solve_dense.c.o
      [710/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_setup_bump.c.o
      [711/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_solve_for_update.c.o
      [712/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_solve_triangular.c.o
      [713/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_solve_sparse.c.o
      [714/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_solve_symbolic.c.o
      [715/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_basiclu_wrapper.cc.o
      [716/1465] Compiling C object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_basiclu_lu_update.c.o
      [717/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_basiclu_kernel.cc.o
      [718/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_basis.cc.o
      [719/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_conjugate_residuals.cc.o
      [720/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_control.cc.o
      [721/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_crossover.cc.o
      [722/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_diagonal_precond.cc.o
      [723/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_forrest_tomlin.cc.o
      [724/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_guess_basis.cc.o
      [725/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_indexed_vector.cc.o
      [726/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_info.cc.o
      [727/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_ipm.cc.o
      [728/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_ipx_c.cc.o
      [729/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_iterate.cc.o
      [730/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_kkt_solver.cc.o
      [731/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_kkt_solver_basis.cc.o
      [732/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_kkt_solver_diag.cc.o
      [733/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_linear_operator.cc.o
      [734/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_lp_solver.cc.o
      [735/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_lu_factorization.cc.o
      [736/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_lu_update.cc.o
      [737/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_maxvolume.cc.o
      [738/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_model.cc.o
      [739/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_normal_matrix.cc.o
      [740/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_sparse_matrix.cc.o
      [741/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_sparse_utils.cc.o
      [742/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_splitted_normal_matrix.cc.o
      [743/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_starting_basis.cc.o
      [744/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_timer.cc.o
      [745/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_symbolic_invert.cc.o
      [746/1465] Compiling C++ object scipy/optimize/_highspy/libhighs.a.p/.._.._.._subprojects_highs_src_ipm_ipx_utils.cc.o
      [747/1465] Generating 'scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/unuran_wrapper.c'
      [748/1465] Generating 'scipy/linalg/cython_lapack.cpython-311-riscv64-linux-gnu.so.p/cython_lapack.c'
      [749/1465] Generating 'scipy/optimize/_bglu_dense.cpython-311-riscv64-linux-gnu.so.p/_bglu_dense.c'
      [750/1465] Generating 'scipy/optimize/_trlib/_trlib.cpython-311-riscv64-linux-gnu.so.p/_trlib.c'
      [751/1465] Generating 'scipy/optimize/_cython_nnls.cpython-311-riscv64-linux-gnu.so.p/_cython_nnls.c'
      [752/1465] Generating 'scipy/spatial/_voronoi.cpython-311-riscv64-linux-gnu.so.p/_voronoi.c'
      [753/1465] Generating 'scipy/spatial/_hausdorff.cpython-311-riscv64-linux-gnu.so.p/_hausdorff.c'
      [754/1465] Linking static target scipy/integrate/libmach_lib.a
      [755/1465] Linking static target scipy/integrate/liblsoda_lib.a
      [756/1465] Linking static target scipy/integrate/libvode_lib.a
      [757/1465] Linking static target scipy/integrate/libdop_lib.a
      [758/1465] Scanning modules
      [759/1465] Generating 'scipy/optimize/_lsq/givens_elimination.cpython-311-riscv64-linux-gnu.so.p/givens_elimination.c'
      [760/1465] Scanning modules
      [761/1465] Scanning modules
      [762/1465] Generating 'scipy/signal/_sigtools.cpython-311-riscv64-linux-gnu.so.p/_correlate_nd.c'
      [763/1465] Generating 'scipy/signal/_sigtools.cpython-311-riscv64-linux-gnu.so.p/_lfilter.c'
      [764/1465] Scanning modules
      [765/1465] Generating 'scipy/cluster/_vq.cpython-311-riscv64-linux-gnu.so.p/_vq.c'
      [766/1465] Generating 'scipy/spatial/_ckdtree.cpython-311-riscv64-linux-gnu.so.p/_ckdtree.cpp'
      [767/1465] Generating 'scipy/signal/_max_len_seq_inner.cpython-311-riscv64-linux-gnu.so.p/_max_len_seq_inner.cpp'
      [768/1465] Linking static target scipy/interpolate/libfitpack_lib.a
      [769/1465] Generating 'scipy/cluster/_optimal_leaf_ordering.cpython-311-riscv64-linux-gnu.so.p/_optimal_leaf_ordering.c'
      [770/1465] Generating 'scipy/spatial/transform/_rotation.cpython-311-riscv64-linux-gnu.so.p/_rotation.c'
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1161:34: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1162:34: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1163:34: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1164:34: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1164:55: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1165:34: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1173:61: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1173:21: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1174:39: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1174:60: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1174:21: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1175:39: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1175:60: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1175:21: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1176:39: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1176:60: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1176:21: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1178:39: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1178:60: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1178:21: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1179:39: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1179:60: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1179:21: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1180:39: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1180:60: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1180:21: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1181:21: Index should be typed for more efficient access
      performance hint: /tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/spatial/transform/_rotation.pyx:1184:29: Index should be typed for more efficient access
      [771/1465] Generating 'scipy/cluster/_hierarchy.cpython-311-riscv64-linux-gnu.so.p/_hierarchy.c'
      [772/1465] Generating 'scipy/fftpack/convolve.cpython-311-riscv64-linux-gnu.so.p/convolve.c'
      [773/1465] Generating 'scipy/signal/_peak_finding_utils.cpython-311-riscv64-linux-gnu.so.p/_peak_finding_utils.c'
      [774/1465] Scanning modules
      [775/1465] Generating 'scipy/signal/_sosfilt.cpython-311-riscv64-linux-gnu.so.p/_sosfilt.c'
      [776/1465] Generating 'scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/_qhull.c'
      [777/1465] Compiling C++ object scipy/interpolate/lib__fitpack.a.p/src___fitpack.cc.o
      [778/1465] Generating 'scipy/interpolate/_interpnd.cpython-311-riscv64-linux-gnu.so.p/_interpnd.c'
      [779/1465] Compiling Fortran object scipy/odr/libodrpack.a.p/odrpack_d_mprec.f.o
      [780/1465] Generating scipy/linalg/flapack_module with a custom command
      [781/1465] Compiling Fortran object scipy/odr/libodrpack.a.p/odrpack_dlunoc.f.o
      [782/1465] Generating 'scipy/interpolate/_rgi_cython.cpython-311-riscv64-linux-gnu.so.p/_rgi_cython.c'
      [783/1465] Compiling C object scipy/_lib/_test_ccallback.cpython-311-riscv64-linux-gnu.so.p/src__test_ccallback.c.o
      [784/1465] Compiling C object scipy/_lib/_fpumode.cpython-311-riscv64-linux-gnu.so.p/_fpumode.c.o
      [785/1465] Compiling Fortran object scipy/odr/libodrpack.a.p/odrpack_d_lpk.f.o
      [786/1465] Compiling C object scipy/_lib/_test_deprecation_def.cpython-311-riscv64-linux-gnu.so.p/meson-generated__test_deprecation_def.c.o
      [787/1465] Generating 'scipy/signal/_upfirdn_apply.cpython-311-riscv64-linux-gnu.so.p/_upfirdn_apply.c'
      [788/1465] Compiling C++ object scipy/_lib/_uarray/_uarray.cpython-311-riscv64-linux-gnu.so.p/_uarray_dispatch.cxx.o
      In file included from /usr/include/python3.11/Python.h:44,
                       from ../scipy/_lib/_uarray/_uarray_dispatch.cxx:1:
      In function ‘PyTypeObject* Py_TYPE(PyObject*)’,
          inlined from ‘static void {anonymous}::BackendState::dealloc({anonymous}::BackendState*)’ at ../scipy/_lib/_uarray/_uarray_dispatch.cxx:316:5:
      /usr/include/python3.11/object.h:133:16: warning: ‘*(PyObject*)self._object::ob_type’ is used uninitialized [-Wuninitialized]
        133 |     return ob->ob_type;
            |                ^~~~~~~
      In function ‘PyTypeObject* Py_TYPE(PyObject*)’,
          inlined from ‘static void {anonymous}::SkipBackendContext::dealloc({anonymous}::SkipBackendContext*)’ at ../scipy/_lib/_uarray/_uarray_dispatch.cxx:866:5:
      /usr/include/python3.11/object.h:133:16: warning: ‘*(PyObject*)self._object::ob_type’ is used uninitialized [-Wuninitialized]
        133 |     return ob->ob_type;
            |                ^~~~~~~
      In function ‘PyTypeObject* Py_TYPE(PyObject*)’,
          inlined from ‘static void {anonymous}::SetBackendContext::dealloc({anonymous}::SetBackendContext*)’ at ../scipy/_lib/_uarray/_uarray_dispatch.cxx:768:5:
      /usr/include/python3.11/object.h:133:16: warning: ‘*(PyObject*)self._object::ob_type’ is used uninitialized [-Wuninitialized]
        133 |     return ob->ob_type;
            |                ^~~~~~~
      In function ‘PyTypeObject* Py_TYPE(PyObject*)’,
          inlined from ‘static void {anonymous}::Function::dealloc({anonymous}::Function*)’ at ../scipy/_lib/_uarray/_uarray_dispatch.cxx:1091:5:
      /usr/include/python3.11/object.h:133:16: warning: ‘*(PyObject*)self._object::ob_type’ is used uninitialized [-Wuninitialized]
        133 |     return ob->ob_type;
            |                ^~~~~~~
      [789/1465] Compiling C++ object scipy/_lib/_uarray/_uarray.cpython-311-riscv64-linux-gnu.so.p/vectorcall.cxx.o
      [790/1465] Generating symbol file scipy/special/libsf_error_state.so.p/libsf_error_state.so.symbols
      [791/1465] Linking static target scipy/special/libcdflib.a
      [792/1465] Generating 'scipy/interpolate/_rbfinterp_pythran.cpython-311-riscv64-linux-gnu.so.p/_rbfinterp_pythran.cpp'
      [793/1465] Compiling C++ object scipy/special/_special_ufuncs.cpython-311-riscv64-linux-gnu.so.p/_special_ufuncs_docs.cpp.o
      [794/1465] Generating 'scipy/ndimage/_cytest.cpython-311-riscv64-linux-gnu.so.p/_cytest.c'
      [795/1465] Generating 'scipy/interpolate/_bspl.cpython-311-riscv64-linux-gnu.so.p/_bspl.cpp'
      [796/1465] Compiling C++ object scipy/special/_gufuncs.cpython-311-riscv64-linux-gnu.so.p/_gufuncs_docs.cpp.o
      [797/1465] Compiling C object scipy/_lib/_test_deprecation_call.cpython-311-riscv64-linux-gnu.so.p/meson-generated__test_deprecation_call.c.o
      [798/1465] Compiling C++ object scipy/special/_special_ufuncs.cpython-311-riscv64-linux-gnu.so.p/sf_error.cc.o
      [799/1465] Compiling C++ object scipy/special/_gufuncs.cpython-311-riscv64-linux-gnu.so.p/sf_error.cc.o
      [800/1465] Compiling C object scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so.p/_cosine.c.o
      [801/1465] Compiling C object scipy/_lib/messagestream.cpython-311-riscv64-linux-gnu.so.p/meson-generated_messagestream.c.o
      [802/1465] Generating 'scipy/ndimage/_ni_label.cpython-311-riscv64-linux-gnu.so.p/_ni_label.c'
      [803/1465] Compiling C++ object scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so.p/dd_real_wrappers.cpp.o
      [804/1465] Compiling C++ object scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so.p/sf_error.cc.o
      [805/1465] Compiling C object scipy/_lib/_ccallback_c.cpython-311-riscv64-linux-gnu.so.p/meson-generated__ccallback_c.c.o
      [806/1465] Generating 'scipy/interpolate/_ppoly.cpython-311-riscv64-linux-gnu.so.p/_ppoly.c'
      [807/1465] Compiling C++ object scipy/special/_ufuncs_cxx.cpython-311-riscv64-linux-gnu.so.p/_faddeeva.cxx.o
      [808/1465] Compiling C++ object scipy/special/_ufuncs_cxx.cpython-311-riscv64-linux-gnu.so.p/_wright.cxx.o
      [809/1465] Compiling C++ object scipy/special/_ufuncs_cxx.cpython-311-riscv64-linux-gnu.so.p/Faddeeva.cc.o
      [810/1465] Compiling C++ object scipy/special/_ufuncs_cxx.cpython-311-riscv64-linux-gnu.so.p/wright.cc.o
      [811/1465] Compiling Fortran object scipy/odr/libodrpack.a.p/odrpack_d_odr.f.o
      [812/1465] Compiling C++ object scipy/special/_ufuncs_cxx.cpython-311-riscv64-linux-gnu.so.p/sf_error.cc.o
      [813/1465] Compiling C++ object scipy/special/_ellip_harm_2.cpython-311-riscv64-linux-gnu.so.p/sf_error.cc.o
      [814/1465] Compiling C object scipy/special/cython_special.cpython-311-riscv64-linux-gnu.so.p/_cosine.c.o
      [815/1465] Compiling C object scipy/special/_ellip_harm_2.cpython-311-riscv64-linux-gnu.so.p/meson-generated__ellip_harm_2.c.o
      [816/1465] Compiling C++ object scipy/special/cython_special.cpython-311-riscv64-linux-gnu.so.p/sf_error.cc.o
      [817/1465] Compiling C++ object scipy/special/cython_special.cpython-311-riscv64-linux-gnu.so.p/dd_real_wrappers.cpp.o
      [818/1465] Compiling C++ object scipy/special/_ufuncs_cxx.cpython-311-riscv64-linux-gnu.so.p/ellint_carlson_wrap.cxx.o
      [819/1465] Compiling C object scipy/special/_comb.cpython-311-riscv64-linux-gnu.so.p/meson-generated__comb.c.o
      [820/1465] Compiling C++ object scipy/special/_test_internal.cpython-311-riscv64-linux-gnu.so.p/dd_real_wrappers.cpp.o
      [821/1465] Compiling C++ object scipy/special/_specfun.cpython-311-riscv64-linux-gnu.so.p/meson-generated__specfun.cpp.o
      [822/1465] Compiling C object scipy/linalg/_fblas.cpython-311-riscv64-linux-gnu.so.p/meson-generated_..__fblasmodule.c.o
      [823/1465] Compiling C object scipy/special/_test_internal.cpython-311-riscv64-linux-gnu.so.p/meson-generated__test_internal.c.o
      [824/1465] Compiling C object scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so.p/meson-generated__ufuncs.c.o
      [825/1465] Compiling C++ object scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so.p/xsf_wrappers.cpp.o
      In file included from ../scipy/special/xsf/amos.h:3,
                       from ../scipy/special/xsf/airy.h:3,
                       from ../scipy/special/xsf_wrappers.cpp:2:
      In function ‘void xsf::amos::unik(std::complex<double>, double, int, int, double, int*, std::complex<double>*, std::complex<double>*, std::complex<double>*, std::complex<double>*, std::complex<double>*)’,
          inlined from ‘int xsf::amos::unk1(std::complex<double>, double, int, int, int, std::complex<double>*, double, double, double)’ at ../scipy/special/xsf/amos/amos.h:5492:13:
      ../scipy/special/xsf/amos/amos.h:5184:5: warning: ‘initd’ may be used uninitialized [-Wmaybe-uninitialized]
       5184 |     if (*init == 0) {
            |     ^~
      ../scipy/special/xsf/amos/amos.h: In function ‘int xsf::amos::unk1(std::complex<double>, double, int, int, int, std::complex<double>*, double, double, double)’:
      ../scipy/special/xsf/amos/amos.h:5289:20: note: ‘initd’ was declared here
       5289 |         jc, ipard, initd, ic;
            |                    ^~~~~
      [826/1465] Compiling C++ object scipy/special/cython_special.cpython-311-riscv64-linux-gnu.so.p/xsf_wrappers.cpp.o
      In file included from ../scipy/special/xsf/amos.h:3,
                       from ../scipy/special/xsf/airy.h:3,
                       from ../scipy/special/xsf_wrappers.cpp:2:
      In function ‘void xsf::amos::unik(std::complex<double>, double, int, int, double, int*, std::complex<double>*, std::complex<double>*, std::complex<double>*, std::complex<double>*, std::complex<double>*)’,
          inlined from ‘int xsf::amos::unk1(std::complex<double>, double, int, int, int, std::complex<double>*, double, double, double)’ at ../scipy/special/xsf/amos/amos.h:5492:13:
      ../scipy/special/xsf/amos/amos.h:5184:5: warning: ‘initd’ may be used uninitialized [-Wmaybe-uninitialized]
       5184 |     if (*init == 0) {
            |     ^~
      ../scipy/special/xsf/amos/amos.h: In function ‘int xsf::amos::unk1(std::complex<double>, double, int, int, int, std::complex<double>*, double, double, double)’:
      ../scipy/special/xsf/amos/amos.h:5289:20: note: ‘initd’ was declared here
       5289 |         jc, ipard, initd, ic;
            |                    ^~~~~
      [827/1465] Compiling C object scipy/linalg/_solve_toeplitz.cpython-311-riscv64-linux-gnu.so.p/meson-generated__solve_toeplitz.c.o
      [828/1465] Compiling C object scipy/linalg/_matfuncs_sqrtm_triu.cpython-311-riscv64-linux-gnu.so.p/meson-generated__matfuncs_sqrtm_triu.c.o
      [829/1465] Compiling C object scipy/linalg/cython_blas.cpython-311-riscv64-linux-gnu.so.p/meson-generated_cython_blas.c.o
      [830/1465] Compiling C object scipy/linalg/cython_lapack.cpython-311-riscv64-linux-gnu.so.p/meson-generated_cython_lapack.c.o
      [831/1465] Compiling C++ object scipy/special/_gufuncs.cpython-311-riscv64-linux-gnu.so.p/_gufuncs.cpp.o
      [832/1465] Compiling C object scipy/linalg/_flapack.cpython-311-riscv64-linux-gnu.so.p/meson-generated_..__flapackmodule.c.o
      [833/1465] Compiling C object scipy/linalg/_matfuncs_expm.cpython-311-riscv64-linux-gnu.so.p/_matfuncs_expm.c.o
      [834/1465] Compiling C object scipy/linalg/_decomp_lu_cython.cpython-311-riscv64-linux-gnu.so.p/meson-generated__decomp_lu_cython.c.o
      [835/1465] Compiling C++ object scipy/special/_special_ufuncs.cpython-311-riscv64-linux-gnu.so.p/_special_ufuncs.cpp.o
      In file included from ../scipy/special/xsf/amos.h:3,
                       from ../scipy/special/xsf/airy.h:3,
                       from ../scipy/special/_special_ufuncs.cpp:7:
      In function ‘void xsf::amos::unik(std::complex<double>, double, int, int, double, int*, std::complex<double>*, std::complex<double>*, std::complex<double>*, std::complex<double>*, std::complex<double>*)’,
          inlined from ‘int xsf::amos::unk1(std::complex<double>, double, int, int, int, std::complex<double>*, double, double, double)’ at ../scipy/special/xsf/amos/amos.h:5492:13:
      ../scipy/special/xsf/amos/amos.h:5184:5: warning: ‘initd’ may be used uninitialized [-Wmaybe-uninitialized]
       5184 |     if (*init == 0) {
            |     ^~
      ../scipy/special/xsf/amos/amos.h: In function ‘int xsf::amos::unk1(std::complex<double>, double, int, int, int, std::complex<double>*, double, double, double)’:
      ../scipy/special/xsf/amos/amos.h:5289:20: note: ‘initd’ was declared here
       5289 |         jc, ipard, initd, ic;
            |                    ^~~~~
      [836/1465] Compiling C++ object scipy/linalg/_linalg_pythran.cpython-311-riscv64-linux-gnu.so.p/meson-generated__linalg_pythran.cpp.o
      [837/1465] Compiling C object scipy/linalg/_decomp_update.cpython-311-riscv64-linux-gnu.so.p/meson-generated__decomp_update.c.o
      scipy/linalg/_decomp_update.cpython-311-riscv64-linux-gnu.so.p/_decomp_update.c: In function ‘__pyx_f_5scipy_6linalg_14_decomp_update_form_qTu’:
      scipy/linalg/_decomp_update.cpython-311-riscv64-linux-gnu.so.p/_decomp_update.c:28566:7: warning: ‘__pyx_v_us[0]’ may be used uninitialized [-Wmaybe-uninitialized]
      28566 |   int __pyx_v_us[2];
            |       ^~~~~~~~~~
      scipy/linalg/_decomp_update.cpython-311-riscv64-linux-gnu.so.p/_decomp_update.c:28566:7: warning: ‘__pyx_v_us[1]’ may be used uninitialized [-Wmaybe-uninitialized]
      [838/1465] Compiling C++ object scipy/sparse/sparsetools/_sparsetools.cpython-311-riscv64-linux-gnu.so.p/sparsetools.cxx.o
      [839/1465] Compiling C++ object scipy/sparse/sparsetools/_sparsetools.cpython-311-riscv64-linux-gnu.so.p/other.cxx.o
      [840/1465] Compiling C++ object scipy/special/_ufuncs_cxx.cpython-311-riscv64-linux-gnu.so.p/meson-generated__ufuncs_cxx.cpp.o
      In file included from ../scipy/_lib/boost_math/include/boost/math/special_functions/gamma.hpp:2547,
                       from ../scipy/_lib/boost_math/include/boost/math/special_functions/beta.hpp:22,
                       from ../scipy/special/boost_special_functions.h:9,
                       from scipy/special/_ufuncs_cxx_defs.h:3,
                       from scipy/special/_ufuncs_cxx.cpython-311-riscv64-linux-gnu.so.p/_ufuncs_cxx.cpp:1246:
      In member function ‘std::tuple<T, T, T> boost::math::detail::gamma_p_inverse_func<T, Policy>::operator()(const T&) const [with T = float; Policy = boost::math::policies::policy<boost::math::policies::domain_error<boost::math::policies::ignore_error>, boost::math::policies::overflow_error<boost::math::policies::user_error>, boost::math::policies::evaluation_error<boost::math::policies::user_error>, boost::math::policies::promote_float<false>, boost::math::policies::promote_double<false>, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy>]’,
          inlined from ‘T boost::math::tools::detail::second_order_root_finder(F, T, T, T, int, uintmax_t&) [with Stepper = halley_step; F = boost::math::detail::gamma_p_inverse_func<float, boost::math::policies::policy<boost::math::policies::domain_error<boost::math::policies::ignore_error>, boost::math::policies::overflow_error<boost::math::policies::user_error>, boost::math::policies::evaluation_error<boost::math::policies::user_error>, boost::math::policies::promote_float<false>, boost::math::policies::promote_double<false>, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy> >; T = float]’ at ../scipy/_lib/boost_math/include/boost/math/tools/roots.hpp:581:35:
      ../scipy/_lib/boost_math/include/boost/math/special_functions/detail/igamma_inverse.hpp:364:10: warning: ‘ft’ may be used uninitialized [-Wmaybe-uninitialized]
        364 |       f1 = static_cast<T>(ft);
            |       ~~~^~~~~~~~~~~~~~~~~~~~
      ../scipy/_lib/boost_math/include/boost/math/special_functions/detail/igamma_inverse.hpp: In function ‘T boost::math::tools::detail::second_order_root_finder(F, T, T, T, int, uintmax_t&) [with Stepper = halley_step; F = boost::math::detail::gamma_p_inverse_func<float, boost::math::policies::policy<boost::math::policies::domain_error<boost::math::policies::ignore_error>, boost::math::policies::overflow_error<boost::math::policies::user_error>, boost::math::policies::evaluation_error<boost::math::policies::user_error>, boost::math::policies::promote_float<false>, boost::math::policies::promote_double<false>, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy> >; T = float]’:
      ../scipy/_lib/boost_math/include/boost/math/special_functions/detail/igamma_inverse.hpp:358:18: note: ‘ft’ declared here
        358 |       value_type ft;
            |                  ^~
      In member function ‘std::tuple<T, T, T> boost::math::detail::gamma_p_inverse_func<T, Policy>::operator()(const T&) const [with T = double; Policy = boost::math::policies::policy<boost::math::policies::domain_error<boost::math::policies::ignore_error>, boost::math::policies::overflow_error<boost::math::policies::user_error>, boost::math::policies::evaluation_error<boost::math::policies::user_error>, boost::math::policies::promote_float<false>, boost::math::policies::promote_double<false>, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy>]’,
          inlined from ‘T boost::math::tools::detail::second_order_root_finder(F, T, T, T, int, uintmax_t&) [with Stepper = halley_step; F = boost::math::detail::gamma_p_inverse_func<double, boost::math::policies::policy<boost::math::policies::domain_error<boost::math::policies::ignore_error>, boost::math::policies::overflow_error<boost::math::policies::user_error>, boost::math::policies::evaluation_error<boost::math::policies::user_error>, boost::math::policies::promote_float<false>, boost::math::policies::promote_double<false>, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy> >; T = double]’ at ../scipy/_lib/boost_math/include/boost/math/tools/roots.hpp:581:35:
      ../scipy/_lib/boost_math/include/boost/math/special_functions/detail/igamma_inverse.hpp:364:10: warning: ‘ft’ may be used uninitialized [-Wmaybe-uninitialized]
        364 |       f1 = static_cast<T>(ft);
            |       ~~~^~~~~~~~~~~~~~~~~~~~
      ../scipy/_lib/boost_math/include/boost/math/special_functions/detail/igamma_inverse.hpp: In function ‘T boost::math::tools::detail::second_order_root_finder(F, T, T, T, int, uintmax_t&) [with Stepper = halley_step; F = boost::math::detail::gamma_p_inverse_func<double, boost::math::policies::policy<boost::math::policies::domain_error<boost::math::policies::ignore_error>, boost::math::policies::overflow_error<boost::math::policies::user_error>, boost::math::policies::evaluation_error<boost::math::policies::user_error>, boost::math::policies::promote_float<false>, boost::math::policies::promote_double<false>, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy, boost::math::policies::default_policy> >; T = double]’:
      ../scipy/_lib/boost_math/include/boost/math/special_functions/detail/igamma_inverse.hpp:358:18: note: ‘ft’ declared here
        358 |       value_type ft;
            |                  ^~
      [841/1465] Compiling C object scipy/linalg/_cythonized_array_utils.cpython-311-riscv64-linux-gnu.so.p/meson-generated__cythonized_array_utils.c.o
      [842/1465] Compiling C object scipy/sparse/csgraph/_flow.cpython-311-riscv64-linux-gnu.so.p/meson-generated__flow.c.o
      [843/1465] Compiling C object scipy/sparse/_csparsetools.cpython-311-riscv64-linux-gnu.so.p/meson-generated__csparsetools.c.o
      [844/1465] Compiling C object scipy/sparse/csgraph/_min_spanning_tree.cpython-311-riscv64-linux-gnu.so.p/meson-generated__min_spanning_tree.c.o
      [845/1465] Compiling C object scipy/linalg/_decomp_interpolative.cpython-311-riscv64-linux-gnu.so.p/meson-generated__decomp_interpolative.c.o
      [846/1465] Compiling C++ object scipy/sparse/sparsetools/_sparsetools.cpython-311-riscv64-linux-gnu.so.p/csc.cxx.o
      [847/1465] Compiling Fortran object scipy/sparse/linalg/_propack/_spropack.cpython-311-riscv64-linux-gnu.so.p/meson-generated__spropack-f2pywrappers.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [848/1465] Compiling C object scipy/sparse/linalg/_propack/_spropack.cpython-311-riscv64-linux-gnu.so.p/meson-generated__spropackmodule.c.o
      [849/1465] Compiling Fortran object scipy/sparse/linalg/_propack/_dpropack.cpython-311-riscv64-linux-gnu.so.p/meson-generated__dpropack-f2pywrappers.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [850/1465] Compiling C object scipy/sparse/linalg/_propack/_dpropack.cpython-311-riscv64-linux-gnu.so.p/meson-generated__dpropackmodule.c.o
      [851/1465] Compiling Fortran object scipy/sparse/linalg/_propack/_cpropack.cpython-311-riscv64-linux-gnu.so.p/meson-generated__cpropack-f2pywrappers.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [852/1465] Compiling C object scipy/sparse/linalg/_propack/_cpropack.cpython-311-riscv64-linux-gnu.so.p/meson-generated__cpropackmodule.c.o
      [853/1465] Compiling Fortran object scipy/sparse/linalg/_propack/_zpropack.cpython-311-riscv64-linux-gnu.so.p/meson-generated__zpropack-f2pywrappers.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [854/1465] Linking static target scipy/sparse/linalg/_dsolve/libsuperlu_lib.a
      [855/1465] Compiling C object scipy/sparse/linalg/_dsolve/_superlu.cpython-311-riscv64-linux-gnu.so.p/_superlumodule.c.o
      [856/1465] Compiling C object scipy/sparse/csgraph/_matching.cpython-311-riscv64-linux-gnu.so.p/meson-generated__matching.c.o
      [857/1465] Compiling C object scipy/sparse/linalg/_propack/_zpropack.cpython-311-riscv64-linux-gnu.so.p/meson-generated__zpropackmodule.c.o
      [858/1465] Compiling C object scipy/sparse/linalg/_dsolve/_superlu.cpython-311-riscv64-linux-gnu.so.p/_superlu_utils.c.o
      [859/1465] Compiling Fortran object scipy/sparse/linalg/_eigen/arpack/_arpack.cpython-311-riscv64-linux-gnu.so.p/meson-generated_..__arpack-f2pywrappers.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [860/1465] Compiling C object scipy/sparse/linalg/_dsolve/_superlu.cpython-311-riscv64-linux-gnu.so.p/_superluobject.c.o
      [861/1465] Compiling C object scipy/sparse/linalg/_eigen/arpack/_arpack.cpython-311-riscv64-linux-gnu.so.p/meson-generated_..__arpackmodule.c.o
      [862/1465] Compiling C object scipy/stats/_mvn.cpython-311-riscv64-linux-gnu.so.p/meson-generated__mvnmodule.c.o
      [863/1465] Compiling Fortran object scipy/stats/_mvn.cpython-311-riscv64-linux-gnu.so.p/meson-generated__mvn-f2pywrappers.f.o
      [864/1465] Compiling Fortran object scipy/stats/_mvn.cpython-311-riscv64-linux-gnu.so.p/mvndst.f.o
      [865/1465] Compiling C object scipy/sparse/csgraph/_tools.cpython-311-riscv64-linux-gnu.so.p/meson-generated__tools.c.o
      [866/1465] Compiling C object scipy/sparse/csgraph/_reordering.cpython-311-riscv64-linux-gnu.so.p/meson-generated__reordering.c.o
      [867/1465] Compiling C object scipy/stats/_ansari_swilk_statistics.cpython-311-riscv64-linux-gnu.so.p/meson-generated__ansari_swilk_statistics.c.o
      [868/1465] Compiling C++ object scipy/stats/_biasedurn.cpython-311-riscv64-linux-gnu.so.p/biasedurn_fnchyppr.cpp.o
      [869/1465] Compiling C++ object scipy/stats/_biasedurn.cpython-311-riscv64-linux-gnu.so.p/biasedurn_impls.cpp.o
      [870/1465] Compiling C++ object scipy/stats/_biasedurn.cpython-311-riscv64-linux-gnu.so.p/biasedurn_stoc1.cpp.o
      [871/1465] Compiling C++ object scipy/stats/_biasedurn.cpython-311-riscv64-linux-gnu.so.p/biasedurn_stoc3.cpp.o
      [872/1465] Compiling C++ object scipy/stats/_biasedurn.cpython-311-riscv64-linux-gnu.so.p/biasedurn_wnchyppr.cpp.o
      [873/1465] Compiling C object scipy/stats/_biasedurn.cpython-311-riscv64-linux-gnu.so.p/libnpyrandom_distributions.c.o
      [874/1465] Compiling C++ object scipy/stats/_biasedurn.cpython-311-riscv64-linux-gnu.so.p/meson-generated__biasedurn.cpp.o
      [875/1465] Linking static target scipy/stats/_levy_stable/lib_levyst.a
      [876/1465] Compiling C object scipy/stats/_levy_stable/levyst.cpython-311-riscv64-linux-gnu.so.p/meson-generated_levyst.c.o
      [877/1465] Compiling C++ object scipy/stats/_qmc_cy.cpython-311-riscv64-linux-gnu.so.p/meson-generated__qmc_cy.cpp.o
      [878/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distr_cemp.c.o
      [879/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distr_condi.c.o
      [880/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distr_cont.c.o
      [881/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distr_corder.c.o
      [882/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distr_cvec.c.o
      [883/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distr_cvemp.c.o
      [884/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distr_cxtrans.c.o
      [885/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distr_discr.c.o
      [886/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distr_distr.c.o
      [887/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distr_distr_info.c.o
      [888/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distr_matr.c.o
      [889/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_F.c.o
      [890/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_beta.c.o
      [891/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_beta_gen.c.o
      [892/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_burr.c.o
      [893/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_cauchy.c.o
      [894/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_chi.c.o
      [895/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_chi_gen.c.o
      [896/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_chisquare.c.o
      [897/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_exponential.c.o
      [898/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_exponential_gen.c.o
      [899/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_extremeI.c.o
      [900/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_extremeII.c.o
      [901/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_gamma.c.o
      [902/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_gamma_gen.c.o
      [903/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_ghyp.c.o
      [904/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_gig.c.o
      [905/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_gig2.c.o
      [906/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_gig_gen.c.o
      [907/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_hyperbolic.c.o
      [908/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_ig.c.o
      [909/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_laplace.c.o
      [910/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_logistic.c.o
      [911/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_lognormal.c.o
      [912/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_lomax.c.o
      [913/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_meixner.c.o
      [914/1465] Compiling C object scipy/sparse/csgraph/_shortest_path.cpython-311-riscv64-linux-gnu.so.p/meson-generated__shortest_path.c.o
      [915/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_normal_gen.c.o
      [916/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_normal.c.o
      [917/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_pareto.c.o
      [918/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_powerexponential.c.o
      [919/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_powerexponential_gen.c.o
      [920/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_rayleigh.c.o
      [921/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_slash.c.o
      [922/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_slash_gen.c.o
      [923/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_student.c.o
      [924/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_triangular.c.o
      [925/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_student_gen.c.o
      [926/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_uniform.c.o
      [927/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_vg.c.o
      [928/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_c_weibull.c.o
      [929/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_binomial.c.o
      [930/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_binomial_gen.c.o
      [931/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_geometric.c.o
      [932/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_hypergeometric.c.o
      [933/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_hypergeometric_gen.c.o
      [934/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_logarithmic.c.o
      [935/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_logarithmic_gen.c.o
      [936/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_negativebinomial.c.o
      [937/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_poisson.c.o
      [938/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_poisson_gen.c.o
      [939/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_zipf.c.o
      [940/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_d_zipf_gen.c.o
      [941/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_m_correlation.c.o
      [942/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_vc_copula.c.o
      [943/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_vc_multicauchy.c.o
      [944/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_vc_multiexponential.c.o
      [945/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_vc_multinormal.c.o
      [946/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_vc_multinormal_gen.c.o
      [947/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_distributions_vc_multistudent.c.o
      [948/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_arou.c.o
      [949/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_ars.c.o
      [950/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_auto.c.o
      [951/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_cext.c.o
      [952/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_cstd.c.o
      [953/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_dari.c.o
      [954/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_dau.c.o
      [955/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_dext.c.o
      [956/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_dgt.c.o
      [957/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_dsrou.c.o
      [958/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_dss.c.o
      [959/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_dstd.c.o
      [960/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_empk.c.o
      [961/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_empl.c.o
      [962/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_gibbs.c.o
      [963/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_hinv.c.o
      [964/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_hist.c.o
      [965/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_hitro.c.o
      [966/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_hrb.c.o
      [967/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_hrd.c.o
      [968/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_hri.c.o
      [969/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_itdr.c.o
      [970/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_mcorr.c.o
      [971/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_mixt.c.o
      [972/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_mvstd.c.o
      [973/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_mvtdr.c.o
      [974/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_ninv.c.o
      [975/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_norta.c.o
      [976/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_nrou.c.o
      [977/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_pinv.c.o
      [978/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_srou.c.o
      [979/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_ssr.c.o
      [980/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_tdr.c.o
      [981/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_tabl.c.o
      [982/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_unif.c.o
      [983/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_utdr.c.o
      [984/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_vempk.c.o
      [985/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_vnrou.c.o
      [986/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_methods_x_gen.c.o
      [987/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_parser_functparser.c.o
      [988/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_parser_parser.c.o
      [989/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_specfunct_bessel_asympt.c.o
      [990/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_parser_stringparser.c.o
      [991/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_specfunct_cephes_igam.c.o
      [992/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_specfunct_cephes_gamma.c.o
      [993/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_specfunct_cephes_incbet.c.o
      [994/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_specfunct_cephes_ndtr.c.o
      [995/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_specfunct_cephes_ndtri.c.o
      [996/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_specfunct_cephes_polevl.c.o
      [997/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_specfunct_hypot.c.o
      [998/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_specfunct_cgamma.c.o
      [999/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_tests_chi2test.c.o
      [1000/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_tests_correlation.c.o
      [1001/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_tests_countpdf.c.o
      [1002/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_tests_counturn.c.o
      [1003/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_tests_inverror.c.o
      [1004/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_tests_moments.c.o
      [1005/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_tests_printsample.c.o
      [1006/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_tests_quantiles.c.o
      [1007/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_tests_tests.c.o
      [1008/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_tests_timing.c.o
      [1009/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_urng_urng.c.o
      [1010/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_urng_urng_default.c.o
      [1011/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_urng_urng_set.c.o
      [1012/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_urng_urng_unuran.c.o
      [1013/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_debug.c.o
      [1014/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_eigensystem.c.o
      [1015/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_fmax.c.o
      [1016/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_error.c.o
      [1017/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_hooke.c.o
      [1018/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_lobatto.c.o
      [1019/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_matrix.c.o
      [1020/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_mrou_rectangle.c.o
      [1021/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_slist.c.o
      [1022/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_stream.c.o
      [1023/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_string.c.o
      [1024/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_umalloc.c.o
      [1025/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_umath.c.o
      [1026/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_unur_fp.c.o
      [1027/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/.._..__lib_unuran_unuran_src_utils_vector.c.o
      [1028/1465] Compiling C object scipy/stats/_rcont/rcont.cpython-311-riscv64-linux-gnu.so.p/_rcont.c.o
      [1029/1465] Compiling C object scipy/stats/_rcont/rcont.cpython-311-riscv64-linux-gnu.so.p/.._libnpyrandom_logfactorial.c.o
      [1030/1465] Compiling C object scipy/stats/_rcont/rcont.cpython-311-riscv64-linux-gnu.so.p/.._libnpyrandom_distributions.c.o
      [1031/1465] Compiling C object scipy/stats/_sobol.cpython-311-riscv64-linux-gnu.so.p/meson-generated__sobol.c.o
      [1032/1465] Compiling C object scipy/io/_test_fortran.cpython-311-riscv64-linux-gnu.so.p/meson-generated__test_fortranmodule.c.o
      [1033/1465] Compiling Fortran object scipy/io/_test_fortran.cpython-311-riscv64-linux-gnu.so.p/meson-generated__test_fortran-f2pywrappers.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [1034/1465] Compiling Fortran object scipy/io/_test_fortran.cpython-311-riscv64-linux-gnu.so.p/_test_fortran.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [1035/1465] Compiling C++ object scipy/stats/_stats_pythran.cpython-311-riscv64-linux-gnu.so.p/meson-generated__stats_pythran.cpp.o
      [1036/1465] Compiling C object scipy/sparse/csgraph/_traversal.cpython-311-riscv64-linux-gnu.so.p/meson-generated__traversal.c.o
      [1037/1465] Compiling C object scipy/io/matlab/_streams.cpython-311-riscv64-linux-gnu.so.p/meson-generated__streams.c.o
      [1038/1465] Compiling C object scipy/io/matlab/_mio_utils.cpython-311-riscv64-linux-gnu.so.p/meson-generated__mio_utils.c.o
      [1039/1465] Compiling C object scipy/stats/_rcont/rcont.cpython-311-riscv64-linux-gnu.so.p/meson-generated_rcont.c.o
      [1040/1465] Compiling C object scipy/stats/_stats.cpython-311-riscv64-linux-gnu.so.p/meson-generated__stats.c.o
      [1041/1465] Compiling C object scipy/io/matlab/_mio5_utils.cpython-311-riscv64-linux-gnu.so.p/meson-generated__mio5_utils.c.o
      [1042/1465] Compiling C object scipy/special/cython_special.cpython-311-riscv64-linux-gnu.so.p/meson-generated_cython_special.c.o
      [1043/1465] Compiling C++ object scipy/io/_fast_matrix_market/_fmm_core.cpython-311-riscv64-linux-gnu.so.p/src__fmm_core.cpp.o
      [1044/1465] Compiling C object scipy/io/_fast_matrix_market/_fmm_core.cpython-311-riscv64-linux-gnu.so.p/fast_matrix_market_dependencies_ryu_ryu_f2s.c.o
      [1045/1465] Compiling C object scipy/io/_fast_matrix_market/_fmm_core.cpython-311-riscv64-linux-gnu.so.p/fast_matrix_market_dependencies_ryu_ryu_d2s.c.o
      [1046/1465] Compiling C object scipy/io/_fast_matrix_market/_fmm_core.cpython-311-riscv64-linux-gnu.so.p/fast_matrix_market_dependencies_ryu_ryu_d2fixed.c.o
      [1047/1465] Compiling C object scipy/optimize/_direct.cpython-311-riscv64-linux-gnu.so.p/_direct_direct_wrap.c.o
      [1048/1465] Compiling C object scipy/optimize/_direct.cpython-311-riscv64-linux-gnu.so.p/_direct_DIRect.c.o
      [1049/1465] Compiling C object scipy/optimize/_direct.cpython-311-riscv64-linux-gnu.so.p/_direct_DIRserial.c.o
      [1050/1465] Compiling C object scipy/optimize/_direct.cpython-311-riscv64-linux-gnu.so.p/_direct_DIRsubrout.c.o
      [1051/1465] Compiling C object scipy/optimize/_direct.cpython-311-riscv64-linux-gnu.so.p/_directmodule.c.o
      [1052/1465] Compiling C++ object scipy/io/_fast_matrix_market/_fmm_core.cpython-311-riscv64-linux-gnu.so.p/src__fmm_core_read_array.cpp.o
      [1053/1465] Linking static target scipy/optimize/librectangular_lsap.a
      [1054/1465] Compiling C object scipy/optimize/_lsap.cpython-311-riscv64-linux-gnu.so.p/_lsap.c.o
      [1055/1465] Linking static target scipy/optimize/librootfind.a
      [1056/1465] Compiling C object scipy/optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/zeros.c.o
      [1057/1465] Compiling C object scipy/optimize/_minpack.cpython-311-riscv64-linux-gnu.so.p/__minpack.c.o
      [1058/1465] Compiling C object scipy/optimize/_lbfgsb.cpython-311-riscv64-linux-gnu.so.p/__lbfgsb.c.o
      [1059/1465] Compiling C object scipy/optimize/_moduleTNC.cpython-311-riscv64-linux-gnu.so.p/tnc_tnc.c.o
      [1060/1465] Compiling C object scipy/stats/_unuran/unuran_wrapper.cpython-311-riscv64-linux-gnu.so.p/meson-generated_unuran_wrapper.c.o
      [1061/1465] Compiling Fortran object scipy/optimize/_cobyla.cpython-311-riscv64-linux-gnu.so.p/meson-generated__cobyla-f2pywrappers.f.o
      [1062/1465] Compiling C object scipy/optimize/_cobyla.cpython-311-riscv64-linux-gnu.so.p/meson-generated__cobylamodule.c.o
      [1063/1465] Compiling Fortran object scipy/optimize/_cobyla.cpython-311-riscv64-linux-gnu.so.p/cobyla_cobyla2.f.o
      [1064/1465] Compiling Fortran object scipy/optimize/_cobyla.cpython-311-riscv64-linux-gnu.so.p/cobyla_trstlp.f.o
      [1065/1465] Compiling Fortran object scipy/optimize/_slsqp.cpython-311-riscv64-linux-gnu.so.p/meson-generated__slsqp-f2pywrappers.f.o
      [1066/1465] Compiling C object scipy/optimize/_slsqp.cpython-311-riscv64-linux-gnu.so.p/meson-generated__slsqpmodule.c.o
      [1067/1465] Compiling Fortran object scipy/optimize/_slsqp.cpython-311-riscv64-linux-gnu.so.p/slsqp_slsqp_optmz.f.o
      [1068/1465] Compiling C object scipy/optimize/_moduleTNC.cpython-311-riscv64-linux-gnu.so.p/meson-generated__moduleTNC.c.o
      [1069/1465] Compiling C++ object scipy/io/_fast_matrix_market/_fmm_core.cpython-311-riscv64-linux-gnu.so.p/src__fmm_core_read_coo.cpp.o
      [1070/1465] Compiling C++ object scipy/optimize/_group_columns.cpython-311-riscv64-linux-gnu.so.p/meson-generated__group_columns.cpp.o
      [1071/1465] Compiling C++ object scipy/io/_fast_matrix_market/_fmm_core.cpython-311-riscv64-linux-gnu.so.p/src__fmm_core_write_array.cpp.o
      [1072/1465] Compiling C++ object scipy/optimize/_pava_pybind.cpython-311-riscv64-linux-gnu.so.p/_pava_pava_pybind.cpp.o
      [1073/1465] Compiling C object scipy/optimize/_cython_nnls.cpython-311-riscv64-linux-gnu.so.p/meson-generated__cython_nnls.c.o
      [1074/1465] Compiling C object scipy/optimize/_trlib/_trlib.cpython-311-riscv64-linux-gnu.so.p/trlib_eigen_inverse.c.o
      [1075/1465] Compiling C object scipy/optimize/_trlib/_trlib.cpython-311-riscv64-linux-gnu.so.p/trlib_leftmost.c.o
      [1076/1465] Compiling C object scipy/optimize/_trlib/_trlib.cpython-311-riscv64-linux-gnu.so.p/trlib_krylov.c.o
      [1077/1465] Compiling C object scipy/optimize/_trlib/_trlib.cpython-311-riscv64-linux-gnu.so.p/trlib_quadratic_zero.c.o
      [1078/1465] Compiling C object scipy/optimize/_trlib/_trlib.cpython-311-riscv64-linux-gnu.so.p/trlib_tri_factor.c.o
      [1079/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/.._extern_filereaderlp_reader.cpp.o
      [1080/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/interfaces_highs_c_api.cpp.o
      [1081/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/io_Filereader.cpp.o
      [1082/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/io_FilereaderEms.cpp.o
      [1083/1465] Compiling C object scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/meson-generated__zeros.c.o
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c: In function ‘__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_bisect’:
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:3462:37: warning: ‘__pyx_v_solver_stats.iterations’ may be used uninitialized [-Wmaybe-uninitialized]
       3462 |     __pyx_v_full_output->iterations = __pyx_t_2;
            |     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:3400:20: note: ‘__pyx_v_solver_stats.iterations’ was declared here
       3400 |   scipy_zeros_info __pyx_v_solver_stats;
            |                    ^~~~~~~~~~~~~~~~~~~~
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c: In function ‘__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brenth’:
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:3710:37: warning: ‘__pyx_v_solver_stats.iterations’ may be used uninitialized [-Wmaybe-uninitialized]
       3710 |     __pyx_v_full_output->iterations = __pyx_t_2;
            |     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:3648:20: note: ‘__pyx_v_solver_stats.iterations’ was declared here
       3648 |   scipy_zeros_info __pyx_v_solver_stats;
            |                    ^~~~~~~~~~~~~~~~~~~~
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c: In function ‘__pyx_f_5scipy_8optimize_15cython_optimize_6_zeros_brentq’:
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:3834:37: warning: ‘__pyx_v_solver_stats.iterations’ may be used uninitialized [-Wmaybe-uninitialized]
       3834 |     __pyx_v_full_output->iterations = __pyx_t_2;
            |     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:3772:20: note: ‘__pyx_v_solver_stats.iterations’ was declared here
       3772 |   scipy_zeros_info __pyx_v_solver_stats;
            |                    ^~~~~~~~~~~~~~~~~~~~
      In function ‘__Pyx_PyInt_From_int’,
          inlined from ‘__pyx_convert__to_py___pyx_t_5scipy_8optimize_15cython_optimize_6_zeros_zeros_full_output’ at scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:9364:12,
          inlined from ‘__pyx_pf_5scipy_8optimize_15cython_optimize_6_zeros_2full_output_example’ at scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:5025:15,
          inlined from ‘__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_3full_output_example’ at scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:4986:13:
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:1129:40: warning: ‘__pyx_v_solver_stats.iterations’ may be used uninitialized [-Wmaybe-uninitialized]
       1129 |   #define PyInt_FromLong               PyLong_FromLong
            |                                        ^
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:9669:20: note: in expansion of macro ‘PyInt_FromLong’
       9669 |             return PyInt_FromLong((long) value);
            |                    ^~~~~~~~~~~~~~
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c: In function ‘__pyx_pw_5scipy_8optimize_15cython_optimize_6_zeros_3full_output_example’:
      scipy/optimize/cython_optimize/_zeros.cpython-311-riscv64-linux-gnu.so.p/_zeros.c:3772:20: note: ‘__pyx_v_solver_stats.iterations’ was declared here
       3772 |   scipy_zeros_info __pyx_v_solver_stats;
            |                    ^~~~~~~~~~~~~~~~~~~~
      [1084/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/io_FilereaderMps.cpp.o
      [1085/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/io_HMPSIO.cpp.o
      [1086/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/io_HMpsFF.cpp.o
      [1087/1465] Compiling C++ object scipy/io/_fast_matrix_market/_fmm_core.cpython-311-riscv64-linux-gnu.so.p/src__fmm_core_write_coo_32.cpp.o
      [1088/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/io_HighsIO.cpp.o
      [1089/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/io_LoadOptions.cpp.o
      [1090/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_IpxWrapper.cpp.o
      [1091/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsCallback.cpp.o
      [1092/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_Highs.cpp.o
      [1093/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsDebug.cpp.o
      [1094/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsIis.cpp.o
      [1095/1465] Compiling C object scipy/optimize/_lsq/givens_elimination.cpython-311-riscv64-linux-gnu.so.p/meson-generated_givens_elimination.c.o
      [1096/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsDeprecated.cpp.o
      [1097/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsInfoDebug.cpp.o
      [1098/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsInfo.cpp.o
      [1099/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/io_FilereaderLp.cpp.o
      [1100/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsLp.cpp.o
      [1101/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsLpUtils.cpp.o
      [1102/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsInterface.cpp.o
      [1103/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsModelUtils.cpp.o
      [1104/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsOptions.cpp.o
      [1105/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsRanging.cpp.o
      [1106/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsSolution.cpp.o
      [1107/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsStatus.cpp.o
      [1108/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsSolutionDebug.cpp.o
      [1109/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/lp_data_HighsSolve.cpp.o
      [1110/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsConflictPool.cpp.o
      [1111/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsDebugSol.cpp.o
      [1112/1465] Compiling C object scipy/optimize/_bglu_dense.cpython-311-riscv64-linux-gnu.so.p/meson-generated__bglu_dense.c.o
      [1113/1465] Compiling C++ object scipy/fft/_pocketfft/pypocketfft.cpython-311-riscv64-linux-gnu.so.p/pypocketfft.cxx.o
      In file included from ../scipy/fft/_pocketfft/pypocketfft.cxx:20:
      In member function ‘pocketfft::detail::cmplx<decltype ((((const pocketfft::detail::cmplx<T>*)this)->pocketfft::detail::cmplx<T>::r * other))> pocketfft::detail::cmplx<T>::operator*(const T2&) const [with T2 = double; T = double]’,
          inlined from ‘void pocketfft::detail::fftblue<T0>::fft(pocketfft::detail::cmplx<T2>*, T0) const [with bool fwd = true; T = double; T0 = double]’ at ../scipy/_lib/pocketfft/pocketfft_hdronly.h:2428:25:
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:15: warning: ‘*(const pocketfft::detail::cmplx<double>*)res.pocketfft::detail::cmplx<double>::r’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |               ^
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:24: warning: ‘*(const pocketfft::detail::cmplx<double>*)res.pocketfft::detail::cmplx<double>::i’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |                        ^
      In member function ‘pocketfft::detail::cmplx<decltype ((((const pocketfft::detail::cmplx<T>*)this)->pocketfft::detail::cmplx<T>::r * other))> pocketfft::detail::cmplx<T>::operator*(const T2&) const [with T2 = double; T = double]’,
          inlined from ‘void pocketfft::detail::fftblue<T0>::fft(pocketfft::detail::cmplx<T2>*, T0) const [with bool fwd = false; T = double; T0 = double]’ at ../scipy/_lib/pocketfft/pocketfft_hdronly.h:2428:25:
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:15: warning: ‘*(const pocketfft::detail::cmplx<double>*)res.pocketfft::detail::cmplx<double>::r’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |               ^
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:24: warning: ‘*(const pocketfft::detail::cmplx<double>*)res.pocketfft::detail::cmplx<double>::i’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |                        ^
      In member function ‘pocketfft::detail::cmplx<decltype ((((const pocketfft::detail::cmplx<T>*)this)->pocketfft::detail::cmplx<T>::r * other))> pocketfft::detail::cmplx<T>::operator*(const T2&) const [with T2 = float; T = float]’,
          inlined from ‘void pocketfft::detail::fftblue<T0>::fft(pocketfft::detail::cmplx<T2>*, T0) const [with bool fwd = true; T = float; T0 = float]’ at ../scipy/_lib/pocketfft/pocketfft_hdronly.h:2428:25:
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:15: warning: ‘*(const pocketfft::detail::cmplx<float>*)res.pocketfft::detail::cmplx<float>::r’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |               ^
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:24: warning: ‘*(const pocketfft::detail::cmplx<float>*)res.pocketfft::detail::cmplx<float>::i’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |                        ^
      In member function ‘pocketfft::detail::cmplx<decltype ((((const pocketfft::detail::cmplx<T>*)this)->pocketfft::detail::cmplx<T>::r * other))> pocketfft::detail::cmplx<T>::operator*(const T2&) const [with T2 = float; T = float]’,
          inlined from ‘void pocketfft::detail::fftblue<T0>::fft(pocketfft::detail::cmplx<T2>*, T0) const [with bool fwd = false; T = float; T0 = float]’ at ../scipy/_lib/pocketfft/pocketfft_hdronly.h:2428:25:
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:15: warning: ‘*(const pocketfft::detail::cmplx<float>*)res.pocketfft::detail::cmplx<float>::r’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |               ^
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:24: warning: ‘*(const pocketfft::detail::cmplx<float>*)res.pocketfft::detail::cmplx<float>::i’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |                        ^
      In member function ‘pocketfft::detail::cmplx<decltype ((((const pocketfft::detail::cmplx<T>*)this)->pocketfft::detail::cmplx<T>::r * other))> pocketfft::detail::cmplx<T>::operator*(const T2&) const [with T2 = long double; T = long double]’,
          inlined from ‘void pocketfft::detail::fftblue<T0>::fft(pocketfft::detail::cmplx<T2>*, T0) const [with bool fwd = true; T = long double; T0 = long double]’ at ../scipy/_lib/pocketfft/pocketfft_hdronly.h:2428:25:
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:15: warning: ‘*(const pocketfft::detail::cmplx<long double>*)res.pocketfft::detail::cmplx<long double>::r’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |               ^
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:24: warning: ‘*(const pocketfft::detail::cmplx<long double>*)res.pocketfft::detail::cmplx<long double>::i’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |                        ^
      In member function ‘pocketfft::detail::cmplx<decltype ((((const pocketfft::detail::cmplx<T>*)this)->pocketfft::detail::cmplx<T>::r * other))> pocketfft::detail::cmplx<T>::operator*(const T2&) const [with T2 = long double; T = long double]’,
          inlined from ‘void pocketfft::detail::fftblue<T0>::fft(pocketfft::detail::cmplx<T2>*, T0) const [with bool fwd = false; T = long double; T0 = long double]’ at ../scipy/_lib/pocketfft/pocketfft_hdronly.h:2428:25:
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:15: warning: ‘*(const pocketfft::detail::cmplx<long double>*)res.pocketfft::detail::cmplx<long double>::r’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |               ^
      ../scipy/_lib/pocketfft/pocketfft_hdronly.h:259:24: warning: ‘*(const pocketfft::detail::cmplx<long double>*)res.pocketfft::detail::cmplx<long double>::i’ may be used uninitialized [-Wmaybe-uninitialized]
        259 |     { return {r*other, i*other}; }
            |                        ^
      [1114/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsDynamicRowMatrix.cpp.o
      [1115/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsGFkSolve.cpp.o
      [1116/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsLpAggregator.cpp.o
      [1117/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsLpRelaxation.cpp.o
      [1118/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsMipAnalysis.cpp.o
      [1119/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsMipSolver.cpp.o
      [1120/1465] Compiling C++ object scipy/io/_fast_matrix_market/_fmm_core.cpython-311-riscv64-linux-gnu.so.p/src__fmm_core_write_coo_64.cpp.o
      [1121/1465] Compiling C object scipy/optimize/_trlib/_trlib.cpython-311-riscv64-linux-gnu.so.p/meson-generated__trlib.c.o
      [1122/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsNodeQueue.cpp.o
      [1123/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsCutPool.cpp.o
      [1124/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsPathSeparator.cpp.o
      [1125/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsCutGeneration.cpp.o
      [1126/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsPseudocost.cpp.o
      [1127/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsRedcostFixing.cpp.o
      [1128/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsSearch.cpp.o
      [1129/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsSeparation.cpp.o
      [1130/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsSeparator.cpp.o
      [1131/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsObjectiveFunction.cpp.o
      [1132/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsImplications.cpp.o
      [1133/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/model_HighsHessian.cpp.o
      [1134/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsDomain.cpp.o
      [1135/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsTransformedLp.cpp.o
      [1136/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/model_HighsHessianUtils.cpp.o
      [1137/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/parallel_HighsTaskExecutor.cpp.o
      [1138/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/pdlp_CupdlpWrapper.cpp.o
      [1139/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/model_HighsModel.cpp.o
      [1140/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/presolve_HPresolveAnalysis.cpp.o
      [1141/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/presolve_HighsPostsolveStack.cpp.o
      [1142/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/presolve_ICrash.cpp.o
      [1143/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/presolve_ICrashUtil.cpp.o
      [1144/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/presolve_ICrashX.cpp.o
      [1145/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/presolve_PresolveComponent.cpp.o
      [1146/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/qpsolver_a_asm.cpp.o
      [1147/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/qpsolver_a_quass.cpp.o
      [1148/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/qpsolver_basis.cpp.o
      [1149/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/qpsolver_perturbation.cpp.o
      [1150/1465] Compiling C++ object scipy/sparse/sparsetools/_sparsetools.cpython-311-riscv64-linux-gnu.so.p/csr.cxx.o
      [1151/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/qpsolver_quass.cpp.o
      [1152/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/qpsolver_ratiotest.cpp.o
      [1153/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/qpsolver_scaling.cpp.o
      [1154/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsModkSeparator.cpp.o
      [1155/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HEkkControl.cpp.o
      [1156/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HEkk.cpp.o
      [1157/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HEkkDebug.cpp.o
      [1158/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HEkkDual.cpp.o
      [1159/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HEkkDualMulti.cpp.o
      [1160/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HEkkInterface.cpp.o
      [1161/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsTableauSeparator.cpp.o
      [1162/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HSimplex.cpp.o
      [1163/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HSimplexDebug.cpp.o
      [1164/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HEkkDualRow.cpp.o
      [1165/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsMipSolverData.cpp.o
      [1166/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HSimplexNlaDebug.cpp.o
      [1167/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HEkkDualRHS.cpp.o
      [1168/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HSimplexNlaFreeze.cpp.o
      [1169/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HSimplexNlaProductForm.cpp.o
      [1170/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HSimplexReport.cpp.o
      [1171/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HighsSimplexAnalysis.cpp.o
      [1172/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/test_DevKkt.cpp.o
      [1173/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/test_KktCh2.cpp.o
      [1174/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HFactorDebug.cpp.o
      [1175/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HFactorExtend.cpp.o
      [1176/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HFactorRefactor.cpp.o
      [1177/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HSet.cpp.o
      [1178/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HFactorUtils.cpp.o
      [1179/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HVectorBase.cpp.o
      [1180/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HighsHash.cpp.o
      [1181/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HighsLinearSumBounds.cpp.o
      [1182/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HighsMatrixPic.cpp.o
      [1183/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HighsSort.cpp.o
      [1184/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HighsMatrixUtils.cpp.o
      [1185/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HighsSparseMatrix.cpp.o
      [1186/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_stringutil.cpp.o
      [1187/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HighsUtils.cpp.o
      [1188/1465] Compiling C object subprojects/highs/src/libhighs.a.p/pdlp_cupdlp_cupdlp_cs.c.o
      [1189/1465] Compiling C object subprojects/highs/src/libhighs.a.p/pdlp_cupdlp_cupdlp_proj.c.o
      [1190/1465] Compiling C object subprojects/highs/src/libhighs.a.p/pdlp_cupdlp_cupdlp_linalg.c.o
      [1191/1465] Compiling C object subprojects/highs/src/libhighs.a.p/pdlp_cupdlp_cupdlp_restart.c.o
      [1192/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HEkkPrimal.cpp.o
      [1193/1465] Compiling C object subprojects/highs/src/libhighs.a.p/pdlp_cupdlp_cupdlp_scaling_cuda.c.o
      [1194/1465] Compiling C object subprojects/highs/src/libhighs.a.p/pdlp_cupdlp_cupdlp_step.c.o
      [1195/1465] Compiling C object subprojects/highs/src/libhighs.a.p/pdlp_cupdlp_cupdlp_solver.c.o
      [1196/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_basiclu_factorize.c.o
      [1197/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsPrimalHeuristics.cpp.o
      [1198/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_basiclu_get_factors.c.o
      [1199/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_basiclu_initialize.c.o
      [1200/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_basiclu_solve_for_update.c.o
      [1201/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_basiclu_solve_dense.c.o
      [1202/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_basiclu_object.c.o
      [1203/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_basiclu_update.c.o
      [1204/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_basiclu_solve_sparse.c.o
      [1205/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_condest.c.o
      [1206/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_dfs.c.o
      [1207/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_factorize_bump.c.o
      [1208/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_garbage_perm.c.o
      [1209/1465] Compiling C object subprojects/highs/src/libhighs.a.p/pdlp_cupdlp_cupdlp_utils.c.o
      [1210/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_build_factors.c.o
      [1211/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_file.c.o
      [1212/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_initialize.c.o
      [1213/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/simplex_HSimplexNla.cpp.o
      [1214/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_matrix_norm.c.o
      [1215/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_internal.c.o
      [1216/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_markowitz.c.o
      [1217/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_setup_bump.c.o
      [1218/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_residual_test.c.o
      [1219/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_solve_dense.c.o
      [1220/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_singletons.c.o
      [1221/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_solve_symbolic.c.o
      [1222/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_solve_sparse.c.o
      [1223/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_solve_for_update.c.o
      [1224/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_solve_triangular.c.o
      [1225/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_basiclu_kernel.cc.o
      [1226/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_basiclu_wrapper.cc.o
      [1227/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_basis.cc.o
      [1228/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_conjugate_residuals.cc.o
      [1229/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_control.cc.o
      [1230/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_diagonal_precond.cc.o
      [1231/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_crossover.cc.o
      [1232/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_update.c.o
      [1233/1465] Compiling C object subprojects/highs/src/libhighs.a.p/ipm_basiclu_lu_pivot.c.o
      [1234/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_forrest_tomlin.cc.o
      [1235/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_guess_basis.cc.o
      [1236/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_indexed_vector.cc.o
      [1237/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_info.cc.o
      [1238/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_ipm.cc.o
      [1239/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_ipx_c.cc.o
      [1240/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_kkt_solver.cc.o
      [1241/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_iterate.cc.o
      [1242/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_kkt_solver_basis.cc.o
      [1243/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_kkt_solver_diag.cc.o
      [1244/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_linear_operator.cc.o
      [1245/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_lp_solver.cc.o
      [1246/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_lu_update.cc.o
      [1247/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_lu_factorization.cc.o
      [1248/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_normal_matrix.cc.o
      [1249/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_maxvolume.cc.o
      [1250/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_sparse_utils.cc.o
      [1251/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_starting_basis.cc.o
      [1252/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_timer.cc.o
      [1253/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_splitted_normal_matrix.cc.o
      [1254/1465] Linking static target scipy/optimize/_highspy/libhighs.a
      [1255/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_symbolic_invert.cc.o
      [1256/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/mip_HighsCliqueTable.cpp.o
      [1257/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/presolve_HighsSymmetry.cpp.o
      [1258/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_misc.c.o
      [1259/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_utils.cc.o
      [1260/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_sparse_matrix.cc.o
      [1261/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/util_HFactor.cpp.o
      [1262/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_geom2_r.c.o
      [1263/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_geom_r.c.o
      [1264/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_mem_r.c.o
      [1265/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_libqhull_r.c.o
      [1266/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_global_r.c.o
      [1267/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/ipm_ipx_model.cc.o
      [1268/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_poly_r.c.o
      [1269/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_io_r.c.o
      [1270/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_random_r.c.o
      [1271/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_qset_r.c.o
      [1272/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_user_r.c.o
      [1273/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_usermem_r.c.o
      [1274/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_userprintf_r.c.o
      [1275/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_userprintf_rbox_r.c.o
      [1276/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_poly2_r.c.o
      [1277/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_merge_r.c.o
      [1278/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_stat_r.c.o
      [1279/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/qhull_src_src_rboxlib_r.c.o
      [1280/1465] Compiling C++ object scipy/spatial/_ckdtree.cpython-311-riscv64-linux-gnu.so.p/ckdtree_src_build.cxx.o
      [1281/1465] Compiling C++ object scipy/spatial/_ckdtree.cpython-311-riscv64-linux-gnu.so.p/ckdtree_src_query_ball_point.cxx.o
      [1282/1465] Compiling C++ object scipy/spatial/_ckdtree.cpython-311-riscv64-linux-gnu.so.p/ckdtree_src_count_neighbors.cxx.o
      [1283/1465] Compiling C++ object scipy/spatial/_ckdtree.cpython-311-riscv64-linux-gnu.so.p/ckdtree_src_query.cxx.o
      [1284/1465] Compiling C++ object scipy/spatial/_ckdtree.cpython-311-riscv64-linux-gnu.so.p/ckdtree_src_query_ball_tree.cxx.o
      [1285/1465] Compiling C object scipy/spatial/_distance_wrap.cpython-311-riscv64-linux-gnu.so.p/src_distance_wrap.c.o
      [1286/1465] Compiling C++ object scipy/spatial/_ckdtree.cpython-311-riscv64-linux-gnu.so.p/ckdtree_src_query_pairs.cxx.o
      [1287/1465] Compiling C++ object scipy/spatial/_ckdtree.cpython-311-riscv64-linux-gnu.so.p/ckdtree_src_sparse_distances.cxx.o
      [1288/1465] Compiling C++ object scipy/optimize/_highspy/_highs_options.cpython-311-riscv64-linux-gnu.so.p/highs_options.cpp.o
      [1289/1465] Compiling C++ object subprojects/highs/src/libhighs.a.p/presolve_HPresolve.cpp.o
      [1290/1465] Compiling C object scipy/spatial/_hausdorff.cpython-311-riscv64-linux-gnu.so.p/meson-generated__hausdorff.c.o
      [1291/1465] Compiling C object scipy/spatial/_voronoi.cpython-311-riscv64-linux-gnu.so.p/meson-generated__voronoi.c.o
      [1292/1465] Compiling C object scipy/cluster/_vq.cpython-311-riscv64-linux-gnu.so.p/meson-generated__vq.c.o
      [1293/1465] Compiling C object scipy/cluster/_optimal_leaf_ordering.cpython-311-riscv64-linux-gnu.so.p/meson-generated__optimal_leaf_ordering.c.o
      [1294/1465] Compiling C object scipy/integrate/_odepack.cpython-311-riscv64-linux-gnu.so.p/_odepackmodule.c.o
      [1295/1465] Compiling C object scipy/integrate/_vode.cpython-311-riscv64-linux-gnu.so.p/meson-generated__vodemodule.c.o
      [1296/1465] Compiling C object scipy/integrate/_quadpack.cpython-311-riscv64-linux-gnu.so.p/__quadpack.c.o
      [1297/1465] Compiling Fortran object scipy/integrate/_vode.cpython-311-riscv64-linux-gnu.so.p/meson-generated__vode-f2pywrappers.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [1298/1465] Compiling Fortran object scipy/integrate/_lsoda.cpython-311-riscv64-linux-gnu.so.p/meson-generated__lsoda-f2pywrappers.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [1299/1465] Compiling C object scipy/integrate/_lsoda.cpython-311-riscv64-linux-gnu.so.p/meson-generated__lsodamodule.c.o
      [1300/1465] Compiling Fortran object scipy/integrate/_dop.cpython-311-riscv64-linux-gnu.so.p/meson-generated__dop-f2pywrappers.f.o
      [1301/1465] Compiling C object scipy/integrate/_dop.cpython-311-riscv64-linux-gnu.so.p/meson-generated__dopmodule.c.o
      [1302/1465] Compiling C object scipy/integrate/_test_multivariate.cpython-311-riscv64-linux-gnu.so.p/tests__test_multivariate.c.o
      [1303/1465] Compiling Fortran object scipy/integrate/_test_odeint_banded.cpython-311-riscv64-linux-gnu.so.p/meson-generated__test_odeint_banded-f2pywrappers.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [1304/1465] Compiling Fortran object scipy/integrate/_test_odeint_banded.cpython-311-riscv64-linux-gnu.so.p/tests_banded5x5.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [1305/1465] Compiling C object scipy/integrate/_test_odeint_banded.cpython-311-riscv64-linux-gnu.so.p/meson-generated__test_odeint_bandedmodule.c.o
      [1306/1465] Compiling C object scipy/cluster/_hierarchy.cpython-311-riscv64-linux-gnu.so.p/meson-generated__hierarchy.c.o
      [1307/1465] Compiling C++ object scipy/sparse/sparsetools/_sparsetools.cpython-311-riscv64-linux-gnu.so.p/bsr.cxx.o
      [1308/1465] Compiling C++ object scipy/spatial/_ckdtree.cpython-311-riscv64-linux-gnu.so.p/meson-generated__ckdtree.cpp.o
      [1309/1465] Compiling C object scipy/signal/_sigtools.cpython-311-riscv64-linux-gnu.so.p/_firfilter.c.o
      [1310/1465] Compiling C object scipy/signal/_sigtools.cpython-311-riscv64-linux-gnu.so.p/meson-generated__lfilter.c.o
      [1311/1465] Compiling C object scipy/signal/_sigtools.cpython-311-riscv64-linux-gnu.so.p/_medianfilter.c.o
      [1312/1465] Compiling C object scipy/signal/_sigtools.cpython-311-riscv64-linux-gnu.so.p/meson-generated__correlate_nd.c.o
      [1313/1465] Compiling C object scipy/spatial/_qhull.cpython-311-riscv64-linux-gnu.so.p/meson-generated__qhull.c.o
      [1314/1465] Compiling C object scipy/signal/_sigtools.cpython-311-riscv64-linux-gnu.so.p/_sigtoolsmodule.c.o
      [1315/1465] Compiling C++ object scipy/signal/_max_len_seq_inner.cpython-311-riscv64-linux-gnu.so.p/meson-generated__max_len_seq_inner.cpp.o
      [1316/1465] Compiling C object scipy/fftpack/convolve.cpython-311-riscv64-linux-gnu.so.p/meson-generated_convolve.c.o
      [1317/1465] Compiling C++ object scipy/signal/_spline.cpython-311-riscv64-linux-gnu.so.p/_splinemodule.cc.o
      [1318/1465] Linking static target scipy/interpolate/lib__fitpack.a
      [1319/1465] Compiling C++ object scipy/spatial/_distance_pybind.cpython-311-riscv64-linux-gnu.so.p/src_distance_pybind.cpp.o
      [1320/1465] Compiling C++ object scipy/interpolate/_dierckx.cpython-311-riscv64-linux-gnu.so.p/src__dierckxmodule.cc.o
      [1321/1465] Compiling C object scipy/interpolate/_fitpack.cpython-311-riscv64-linux-gnu.so.p/src__fitpackmodule.c.o
      [1322/1465] Compiling C object scipy/interpolate/_dfitpack.cpython-311-riscv64-linux-gnu.so.p/meson-generated__dfitpackmodule.c.o
      [1323/1465] Compiling Fortran object scipy/interpolate/_dfitpack.cpython-311-riscv64-linux-gnu.so.p/meson-generated__dfitpack-f2pywrappers.f.o
      f951: Warning: Nonexistent include directory ‘/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/include’ [-Wmissing-include-dirs]
      [1324/1465] Compiling C object scipy/signal/_peak_finding_utils.cpython-311-riscv64-linux-gnu.so.p/meson-generated__peak_finding_utils.c.o
      [1325/1465] Compiling C object scipy/ndimage/_nd_image.cpython-311-riscv64-linux-gnu.so.p/src_nd_image.c.o
      [1326/1465] Compiling C object scipy/signal/_sosfilt.cpython-311-riscv64-linux-gnu.so.p/meson-generated__sosfilt.c.o
      [1327/1465] Compiling C object scipy/ndimage/_nd_image.cpython-311-riscv64-linux-gnu.so.p/src_ni_fourier.c.o
      [1328/1465] Compiling C object scipy/ndimage/_nd_image.cpython-311-riscv64-linux-gnu.so.p/src_ni_filters.c.o
      [1329/1465] Compiling C object scipy/ndimage/_nd_image.cpython-311-riscv64-linux-gnu.so.p/src_ni_interpolation.c.o
      [1330/1465] Compiling C++ object scipy/interpolate/_bspl.cpython-311-riscv64-linux-gnu.so.p/meson-generated__bspl.cpp.o
      [1331/1465] Compiling C object scipy/ndimage/_nd_image.cpython-311-riscv64-linux-gnu.so.p/src_ni_splines.c.o
      [1332/1465] Compiling C object scipy/interpolate/_rgi_cython.cpython-311-riscv64-linux-gnu.so.p/meson-generated__rgi_cython.c.o
      [1333/1465] Compiling C object scipy/ndimage/_nd_image.cpython-311-riscv64-linux-gnu.so.p/src_ni_measure.c.o
      [1334/1465] Compiling C object scipy/ndimage/_nd_image.cpython-311-riscv64-linux-gnu.so.p/src_ni_morphology.c.o
      [1335/1465] Compiling C object scipy/ndimage/_nd_image.cpython-311-riscv64-linux-gnu.so.p/src_ni_support.c.o
      [1336/1465] Compiling C object scipy/signal/_upfirdn_apply.cpython-311-riscv64-linux-gnu.so.p/meson-generated__upfirdn_apply.c.o
      [1337/1465] Linking static target scipy/odr/libodrpack.a
      [1338/1465] Compiling C object scipy/ndimage/_ctest.cpython-311-riscv64-linux-gnu.so.p/src__ctest.c.o
      [1339/1465] Linking target scipy/_lib/_ccallback_c.cpython-311-riscv64-linux-gnu.so
      [1340/1465] Linking target scipy/_lib/_test_ccallback.cpython-311-riscv64-linux-gnu.so
      [1341/1465] Linking target scipy/_lib/_fpumode.cpython-311-riscv64-linux-gnu.so
      [1342/1465] Linking target scipy/_lib/_test_deprecation_call.cpython-311-riscv64-linux-gnu.so
      [1343/1465] Linking target scipy/_lib/_test_deprecation_def.cpython-311-riscv64-linux-gnu.so
      [1344/1465] Linking target scipy/_lib/messagestream.cpython-311-riscv64-linux-gnu.so
      [1345/1465] Linking target scipy/_lib/_uarray/_uarray.cpython-311-riscv64-linux-gnu.so
      [1346/1465] Compiling C++ object scipy/ndimage/_rank_filter_1d.cpython-311-riscv64-linux-gnu.so.p/src__rank_filter_1d.cpp.o
      [1347/1465] Compiling C object scipy/odr/__odrpack.cpython-311-riscv64-linux-gnu.so.p/__odrpack.c.o
      [1348/1465] Linking target scipy/special/_gufuncs.cpython-311-riscv64-linux-gnu.so
      [1349/1465] Linking target scipy/special/_specfun.cpython-311-riscv64-linux-gnu.so
      [1350/1465] Linking target scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so
      FAILED: scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so
      c++  -o scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so.p/meson-generated__ufuncs.c.o scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so.p/_cosine.c.o scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so.p/xsf_wrappers.cpp.o scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so.p/sf_error.cc.o scipy/special/_ufuncs.cpython-311-riscv64-linux-gnu.so.p/dd_real_wrappers.cpp.o -Wl,--as-needed -Wl,--allow-shlib-undefined -Wl,-O1 -shared -fPIC '-Wl,-rpath,$ORIGIN/' -Wl,-rpath-link,/tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/.mesonpy-2oy52w6f/scipy/special -Wl,--start-group scipy/special/libcdflib.a scipy/libdummy_g77_abi_wrappers.a scipy/special/libsf_error_state.so -Wl,--version-script=/tmp/pip-install-givi_pn2/scipy_d076eee9ad3c4c9790969ca5c17cd6d4/scipy/_build_utils/link-version-pyinit.map -L/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/lib -lopenblas /tmp/pip-build-env-gx8jv6g9/overlay/lib64/python3.11/site-packages/numpy/_core/include/../lib/libnpymath.a -L/home-local/evenieri.local/openblas_jupyter/openblas-0.3.29-x280/lib -lopenblas -Wl,--end-group
      /usr/bin/ld: cannot find -lopenblas: No such file or directory
      /usr/bin/ld: cannot find -lopenblas: No such file or directory
      collect2: error: ld returned 1 exit status
      [1351/1465] Linking target scipy/special/_special_ufuncs.cpython-311-riscv64-linux-gnu.so
      [1352/1465] Linking target scipy/special/_ufuncs_cxx.cpython-311-riscv64-linux-gnu.so
      [1353/1465] Compiling C object scipy/interpolate/_interpnd.cpython-311-riscv64-linux-gnu.so.p/meson-generated__interpnd.c.o
      [1354/1465] Compiling C object scipy/ndimage/_cytest.cpython-311-riscv64-linux-gnu.so.p/meson-generated__cytest.c.o
      [1355/1465] Compiling C++ object scipy/optimize/_highspy/_core.cpython-311-riscv64-linux-gnu.so.p/.._.._.._subprojects_highs_src_highs_bindings.cpp.o
      [1356/1465] Compiling C object scipy/interpolate/_ppoly.cpython-311-riscv64-linux-gnu.so.p/meson-generated__ppoly.c.o
      [1357/1465] Compiling C object scipy/spatial/transform/_rotation.cpython-311-riscv64-linux-gnu.so.p/meson-generated__rotation.c.o
      [1358/1465] Compiling C++ object scipy/interpolate/_rbfinterp_pythran.cpython-311-riscv64-linux-gnu.so.p/meson-generated__rbfinterp_pythran.cpp.o
      [1359/1465] Compiling C object scipy/ndimage/_ni_label.cpython-311-riscv64-linux-gnu.so.p/meson-generated__ni_label.c.o
      ninja: build stopped: subcommand failed.
      [end of output]
  
  note: This error originates from a subprocess, and is likely not a problem with pip.
error: metadata-generation-failed
