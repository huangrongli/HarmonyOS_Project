import { hilog } from '@kit.PerformanceAnalysisKit';
import testNapi from 'libentry.so'

@Entry
@Component
struct Index {
  @State message: string = 'HarmonyOS'
  @State name: string = 'Huang RongLi'
  @State contentMes: string  = 'Hello World'
  build() {
    Tabs({ barPosition:BarPosition.End}){
      TabContent(){
        Text('商城')
      }
      .tabBar('商城')
      TabContent(){
        Text('沟通消息')
      }
      .tabBar('沟通')
      TabContent(){
        Text('通讯录')
      }
      .tabBar('通讯录')
      TabContent(){
        Text('我的')
      }
      .tabBar('我的')
    }
    .barMode(BarMode.Fixed)

  }
}
