#map = affine_map<(d0, d1)[s0] -> (4, d0 - d1)>
#sparse = #sparse_tensor.encoding<{ map = (d0, d1) -> (d0 : dense, d1 : compressed) }>
module {
  memref.global "private" constant @__constant_30xindex : memref<30xindex> = dense<[8, 3, 4, 6, 9, 2, 4, 0, 1, 2, 3, 5, 7, 8, 3, 6, 2, 3, 4, 5, 8, 1, 5, 7, 8, 5, 9, 4, 7, 7]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_11xindex : memref<11xindex> = dense<[0, 1, 5, 7, 14, 16, 21, 25, 27, 29, 30]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_30xf64 : memref<30xf64> = dense<[4.7563469999999999, 2.102859, 5.4238689999999998, 5.577680e+00, 3.001240e-01, 4.8357549999999998, 8.8596050000000002, 1.592490e+00, 7.372070e+00, 7.2462879999999998, 5.9191609999999999, 5.9593920000000002, 4.6956530000000001, 6.328630e-01, 3.1591619999999998, 4.7083050000000002, 8.4356449999999992, 5.4309390000000004, 2.1190630000000001, 1.545420e-01, 2.595040e+00, 1.4655819999999999, 1.321259, 3.702925, 3.542246, 6.831162, 1.723510e+00, 7.8729019999999998, 6.0081550000000004, 1.047045]> {alignment = 64 : i64}
  memref.global "private" constant @__constant_10x10xf64 : memref<10x10xf64> = dense<[[5.0072820879405331, 2.1420497309468542, 8.4364357946217474, 3.3512684114489364, 4.8578737173077684, 6.5026873298607608, 4.481183080848961, 1.6018142840321781, 1.6482067031075565, 2.7697353449463433], [8.2796435610104453, 9.7956308688691446, 5.066309369035312, 1.0691978274975567, 7.2754747197326219, 7.4679216752662611, 1.8460472498040226, 1.7245060332115747, 9.828847678500983, 5.8523888503628294], [4.735129046344202, 0.21389279999051047, 9.9823910553584571, 0.22751442405574696, 4.3063298537464378, 1.0300462704374436, 7.1885192597496097, 1.7297134743393461, 7.4494154821665912, 8.2180913094628564], [0.55370097211729696, 7.0871105126860554, 7.7450498540614178, 4.2448327660994876, 1.2746000519648371, 9.4391729894286023, 6.1902689198805465, 6.0312877871821424, 8.7890699247898425, 3.1611885774377635], [8.9903796016343396, 3.4471256572948263, 8.4932841564173884, 9.9373309006088171, 2.6191045587156303, 0.77351004199567641, 1.4024547359632467, 7.454551829233095, 2.6194195569905077, 4.0298520046877577], [4.7641019675563543, 3.8129279818642861, 9.0747728919768225, 6.4920816381757511, 6.7882405668469881, 7.0063465072165911, 5.7386637585592792, 7.5230234961300599, 0.91592641387099771, 8.6646639602141899], [5.6862365678538973, 4.8755032417073192, 9.5859588536709328, 8.1186668576209513, 5.3811119011589454, 3.8280043169558411, 9.9983397606134918, 6.1835824149566241, 3.4201107815517515, 0.84968218962971687], [2.791270331453247, 2.9735813587818685, 3.0654358664150494, 5.4929582569491755, 3.9238922832952996, 9.2657934977933269, 5.0681592194030571, 9.6910348814034712, 2.0972430846802959, 0.96789458347651514], [3.1989914495545624, 3.7607248895716507, 5.5182323136835318, 2.4724154287944913, 7.2920674615977124, 9.7009225179758473, 9.9421519655410044, 2.6109645810252315, 9.0484630420475316, 3.6771724535825703], [6.305746358135309, 7.6948754823713771, 3.6012681436537397, 1.263350310992416, 3.8581878444772943, 7.1047027925517909, 2.1904752468927735, 0.32914734762647391, 3.1668377278172235, 2.0518472657841924]]> {alignment = 64 : i64}
  func.func @matmul(%arg0: tensor<10x10xf64, #sparse>, %arg1: tensor<10x10xf64>, %arg2: tensor<10x10xf64>) -> tensor<10x10xf64> {
    %cst = arith.constant dense<0.000000e+00> : vector<4xf64>
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %0 = sparse_tensor.values %arg0 : tensor<10x10xf64, #sparse> to memref<?xf64>
    %1 = bufferization.to_memref %arg1 : tensor<10x10xf64> to memref<10x10xf64>
    %2 = bufferization.to_memref %arg2 : tensor<10x10xf64> to memref<10x10xf64>
    %3 = sparse_tensor.positions %arg0 {level = 1 : index} : tensor<10x10xf64, #sparse> to memref<?xindex>
    %4 = sparse_tensor.coordinates %arg0 {level = 1 : index} : tensor<10x10xf64, #sparse> to memref<?xindex>
    scf.for %arg3 = %c0 to %c10 step %c1 {
      %6 = memref.load %3[%arg3] : memref<?xindex>
      %7 = arith.addi %arg3, %c1 : index
      %8 = memref.load %3[%7] : memref<?xindex>
      scf.for %arg4 = %6 to %8 step %c1 {
        %9 = memref.load %4[%arg4] : memref<?xindex>
        %10 = memref.load %0[%arg4] : memref<?xf64>
        scf.for %arg5 = %c0 to %c10 step %c4 {
          %11 = affine.min #map(%c10, %arg5)[%c4]
          %12 = vector.create_mask %11 : vector<4xi1>
          %13 = vector.maskedload %2[%arg3, %arg5], %12, %cst : memref<10x10xf64>, vector<4xi1>, vector<4xf64> into vector<4xf64>
          %14 = vector.broadcast %10 : f64 to vector<4xf64>
          %15 = vector.maskedload %1[%9, %arg5], %12, %cst : memref<10x10xf64>, vector<4xi1>, vector<4xf64> into vector<4xf64>
          %16 = arith.mulf %14, %15 : vector<4xf64>
          %17 = arith.addf %13, %16 : vector<4xf64>
          vector.maskedstore %2[%arg3, %arg5], %12, %17 : memref<10x10xf64>, vector<4xi1>, vector<4xf64>
        } {"Emitted from" = "linalg.generic"}
      } {"Emitted from" = "linalg.generic"}
    } {"Emitted from" = "linalg.generic"}
    %5 = bufferization.to_tensor %2 : memref<10x10xf64> to tensor<10x10xf64>
    return %5 : tensor<10x10xf64>
  }
  func.func @main() -> i64 {
    %c8 = arith.constant 8 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c1 = arith.constant 1 : index
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %0 = memref.get_global @__constant_10x10xf64 : memref<10x10xf64>
    %1 = bufferization.to_tensor %0 : memref<10x10xf64> to tensor<10x10xf64>
    %2 = bufferization.alloc_tensor() : tensor<10x10xf64>
    %3 = call @assemble_sparse() : () -> tensor<10x10xf64, #sparse>
    %4 = call @matmul(%3, %1, %2) : (tensor<10x10xf64, #sparse>, tensor<10x10xf64>, tensor<10x10xf64>) -> tensor<10x10xf64>
    %5 = bufferization.to_memref %4 : tensor<10x10xf64> to memref<10x10xf64, strided<[?, ?], offset: ?>>
    scf.for %arg0 = %c0 to %c10 step %c1 {
      %8 = vector.transfer_read %4[%arg0, %c0], %cst {in_bounds = [true]} : tensor<10x10xf64>, vector<10xf64>
      vector.print %8 : vector<10xf64>
    }
    %6 = memref.load %5[%c8, %c8] : memref<10x10xf64, strided<[?, ?], offset: ?>>
    %7 = arith.fptosi %6 : f64 to i64
    return %7 : i64
  }
  func.func @assemble_sparse() -> tensor<10x10xf64, #sparse> {
    %0 = memref.get_global @__constant_30xf64 : memref<30xf64>
    %1 = bufferization.to_tensor %0 : memref<30xf64> to tensor<30xf64>
    %2 = memref.get_global @__constant_11xindex : memref<11xindex>
    %3 = bufferization.to_tensor %2 : memref<11xindex> to tensor<11xindex>
    %4 = memref.get_global @__constant_30xindex : memref<30xindex>
    %5 = bufferization.to_tensor %4 : memref<30xindex> to tensor<30xindex>
    %6 = sparse_tensor.assemble (%3, %5), %1 : (tensor<11xindex>, tensor<30xindex>), tensor<30xf64> to tensor<10x10xf64, #sparse>
    return %6 : tensor<10x10xf64, #sparse>
  }
}

