@Entry
@Component
struct Index {
  @State imagenumber: number = 200;
  build() {
    Column(){
      Row(){
        Image('https://res.vmallres.com/pimages//uomcdn/CN/pms/202404/gbom/6942103121111/428_428_CF7C9B34233A8D89422DB3185635E393mp.png')
          .width(this.imagenumber)
      }
      .height(300)
      .width(300)
      .justifyContent(FlexAlign.Center)
      Row(){
        Text($r('app.string.width_label'))
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .backgroundColor('#ffa8c2ef')
        TextInput({placeholder:'请输入宽度',text:this.imagenumber.toString()})
          .type(InputType.Number)
          .width(200)
          .onChange(value => {
            this.imagenumber = parseInt(value)
          })
      }
      .width('100%')
      .padding({left:14,right:14})
      .justifyContent(FlexAlign.SpaceBetween)
      Divider()

      Row(){
        Button('缩小')
          .onClick(() => {
            if(this.imagenumber > 150){
              this.imagenumber -= 10
            }
          })
        Button('放大')
          .onClick(() => {
            if(this.imagenumber < 300){
              this.imagenumber += 10
            }
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)
      .margin({top:35,bottom:35})
      Slider({
        min:150,
        max:300,
        value:this.imagenumber,
        step:10,
        direction:Axis.Horizontal
      })
        .width(300)
        .trackThickness(5)
        .showTips(true)
        .blockBorderColor('#36D')
        .onChange(value => {
          this.imagenumber = value
        })
    }
    .width('100%')
    .height('100%')
  }
}