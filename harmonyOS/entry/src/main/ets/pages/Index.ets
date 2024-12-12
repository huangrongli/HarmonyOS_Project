import { hilog } from '@kit.PerformanceAnalysisKit';
import testNapi from 'libentry.so'

@Entry
@Component
struct Index {
  @State message: string = 'HarmonyOS HuangRongLi Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
           // console.log(testNapi); // 检查 testNapi 是否为 undefined
            if (testNapi && typeof testNapi.add === 'function') {
              hilog.info(0x0000, 'testTag', 'Test NAPI 2 + 3 = %{public}d', testNapi.add(2, 3));
            } else {
              hilog.error(0x0000, 'testTag', 'testNapi or add is undefined');
            }          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
