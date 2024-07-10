import QtQuick 2.15
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects

ApplicationWindow {
    id: mainWindow
    visible:true
    title: "基于YOLOv7的人流量检测系统"
    minimumWidth: 1200
    maximumWidth: 1400
    minimumHeight: 800
    maximumHeight: 1200
    // width:1920
    // height:1080
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: page2 //设置初始页面
        Component.onCompleted: {
            stackView.push(page2.createObject(stackView)) //可以在这里添加初始化页面
        }
    }
    Component {
        id: page1
        Page1{}
    }
    // 
    Component {
        id: page2
        Page2{}
    }

}