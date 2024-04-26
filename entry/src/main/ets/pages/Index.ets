@Entry
@Component
struct Index {
  @State message: number = 0;
  build() {
    Row() {
      Column(){
        Button(`点击${this.message}次`)
          .foregroundColor("#ffd47373")
          .onClick(()=>this.message++)
        Image('https://res.vmallres.com/pimages//uomcdn/CN/pms/202404/gbom/6942103121111/428_428_CF7C9B34233A8D89422DB3185635E393mp.png')
          .width(300)
        Image($r('app.media.startIcon'))
          .width(100)
          .interpolation(ImageInterpolation.High)
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}