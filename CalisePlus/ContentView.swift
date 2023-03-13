import SwiftUI

let calc = calcObjC()

struct ContentView: View {
    @State private var screenText = "0 "
    @State private var oouControlText = "4/5"
    @State private var dotControlText = "0"
    @State private var oouControl = 1.0
    @State private var dotControl = 0.0
    
    var body: some View {
        ZStack {
            Color(red: 176/255, green: 196/255, blue: 222/255).ignoresSafeArea()
            Grid(horizontalSpacing: 6, verticalSpacing: 6) {
                GridRow {
                    Text("\(screenText)").font(.system(size: 36, weight: .bold))
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing).gridCellColumns(4)
                        .background(Color(red: 240/255, green: 248/255, blue: 255/255))
                }
                GridRow {
                    VStack {
                        Slider(value: $oouControl, in: 0...2, step: 1, onEditingChanged: {
                            editing in
                            switch oouControl {
                            case 0.0:
                                oouControlText = "out"
                            case 2.0:
                                oouControlText = "up"
                            default:
                                oouControlText = "4/5"
                            }
                            calc.setOouControl(Int32(oouControl))
                        }).frame(maxWidth: .infinity, maxHeight: .infinity)
                        Text("\(oouControlText)").font(.system(size: 24, weight: .bold))
                            .frame(maxWidth: 50, maxHeight: .infinity)
                            .background(Color(red: 240/255, green: 248/255, blue: 255/255))
                    }.gridCellColumns(2)
                    VStack {
                        Slider(value: $dotControl, in: 0...3, step: 1, onEditingChanged: {
                            editing in
                            dotControlText = calc.setDotControl(Int32(dotControl))
                        }).frame(maxWidth: .infinity, maxHeight: .infinity)
                        Text("\(dotControlText)").font(.system(size: 24, weight: .bold))
                            .frame(maxWidth: 50, maxHeight: .infinity)
                            .background(Color(red: 240/255, green: 248/255, blue: 255/255))
                    }.gridCellColumns(2)
                }
                GridRow {
                    Button(action: {screenText = calc.myClear()}) {
                        Text("C").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                    Button(action: {screenText = calc.myNegative()}) {
                        Text("(-)").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.backSpace()}) {
                        Text("<-").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                }
                GridRow {
                    Button(action: {screenText = calc.memoryRead()}) {
                        Text("MR").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {calc.memoryWrite()}) {
                        Text("MW").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.powTwo()}) {
                        Text("^2").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.mySqrt()}) {
                        Text("SR").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                }
                GridRow {
                    Button(action: {screenText = calc.sendNumber("7")}) {
                        Text("7").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.sendNumber("8")}) {
                        Text("8").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.sendNumber("9")}) {
                        Text("9").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.sendOperator(4)}) {
                        Text("/").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                }
                GridRow {
                    Button(action: {screenText = calc.sendNumber("4")}) {
                        Text("4").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.sendNumber("5")}) {
                        Text("5").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.sendNumber("6")}) {
                        Text("6").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.sendOperator(3)}) {
                        Text("*").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                }
                GridRow {
                    Button(action: {screenText = calc.sendNumber("1")}) {
                        Text("1").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.sendNumber("2")}) {
                        Text("2").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.sendNumber("3")}) {
                        Text("3").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.sendOperator(2)}) {
                        Text("-").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                }
                GridRow {
                    Button(action: {screenText = calc.sendNumber("0")}) {
                        Text("0").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.sendDot()}) {
                        Text(".").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.getResult()}) {
                        Text("=").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                    Button(action: {screenText = calc.sendOperator(1)}) {
                        Text("+").font(.system(size: 36, weight: .bold))
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 70/255, green: 130/255, blue: 180/255)).foregroundColor(.white)
                }
            }.padding(6)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
