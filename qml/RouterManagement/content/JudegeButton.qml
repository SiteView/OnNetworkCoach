import QtQuick 2.0

Rectangle {
    id: mainRect

    property string xDefault: ""
    property string labelPointSize: "12"
    property string labelText: ""

    signal click()

    width: 90; height: 20
    color: "#c04210"

    //显示功能状态
    Text {
        id: labelInfo
        x: 0; y: 2
        font.pointSize: labelPointSize
        font.bold: true
        text: labelText
    }

    //状态设置
    Rectangle {
        id: outRect
        x: 30; y: 0
        width: 60; height: 20
        color: "lightgreen"

        Rectangle {
            id: inerRect

            x: 5; y: 2
            width: 50; height: 17
            color: outRect.color
            border.color: "red"; border.width: 2
        }

        Rectangle {
            id: statusRect

            x: xDefault
            width: outRect.width/3; height: outRect.height
            color: "white"
        }

        MouseArea {
            id: mouseArea

            anchors.fill: outRect
            onClicked: click()
        }
    }
}
