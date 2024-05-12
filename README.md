## ⚙️ SwiftData
`Xcode beta 15.0` `iOS beta 17.0` `Swift 5.9` 이상부터 사용 가능한 데이터 모델링 및 관리를 위한 프레임워크입니다. <br/>
Core Data와 비슷한 개념으로 Swift를 사용해 더 쉽게 데이터를 관리할 수 있고, SwiftUI에 최적화되어있습니다.

<br/>

## 🛠️ SwiftData Workflow

1. **@model 모델의 스키마를 정의** <br/> 
SwiftData에서 데이터 모델을 정의할 때 먼저 @model 속성을 사용하여 모델의 스키마를 정의합니다. 필요에 따라 @Attribute, @Relationship을 설정할 수도 있습니다. 이를 통해 데이터의 구조를 명확히합니다.

2. **모델의 스키마를 modelContainer로 설정** <br/>
SwiftData를 사용하기 위해 모델의 스키마를 modelContainer로 설정합니다. 이는 데이터를 저장하고 관리하는데 사용됩니다.

3. **modelContext 생성** <br/>
모델 데이터와 모델 컨테이너와의 조정을 담당하는 객체인 modelContext를 생성합니다. 이를 통해 런타임에서 모델 인스턴스를 관리할 수 있습니다. @Environment(\.modelContext)을 사용하여 모델 컨텍스트에 액세스할 수 있습니다.

4. **modelContext를 사용해서 데이터 CRUD 가능** <br/>
modelContext의 메소드를 사용하여 데이터를 로드하거나 저장 및 삭제할 수 있습니다. 이를 통해 모델 데이터를 효과적으로 관리할 수 있습니다.
