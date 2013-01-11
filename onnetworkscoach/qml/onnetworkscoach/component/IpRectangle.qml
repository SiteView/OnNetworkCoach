import QtQuick 1.1

Item {
    height: 20; width:140
    Rectangle
    {
        id: ipRect
        anchors.fill: parent
        border.color: "black"; border.width: 1
        clip: true

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: parent.border.color = "red"
            onExited: parent.border.color = "black"
        }
    }

    Row {
        Loader { sourceComponent: textInputComponent; id:textInputComponet0 }
        Text { text: "."; color: "black" }
        Loader { sourceComponent: textInputComponent; id:textInputComponet1 }
        Text { text: "."; color: "black" }
        Loader { sourceComponent: textInputComponent; id:textInputComponet2 }
        Text { text: "."; color: "black" }
        Loader { sourceComponent: textInputComponent; id:textInputComponet3 }
    }

    Component {
        id: textInputComponent
        /*TODO
         *输入数值的多少
         *正则表达式实现只能输入数字
         */
        TextInput
        {
            id: testInput
            width: 30; height: 20
            font.family: "Helvetica"; font.pixelSize: ipRect.height
            cursorPosition: 1
            color: "black"
            selectByMouse: true
        }
    }
}

