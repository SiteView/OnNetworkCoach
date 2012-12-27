import QtQuick 1.0

Rectangle
{
    id: ipRect
    height: 20; width:140
    border.color: "black"; border.width: 1
    clip: true

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
            TextInput
            {
                id: testInput
                width: 30; height: 20
                font.family: "Helvetica"; font.pointSize: 10
                cursorPosition: 1
                color: "black"
                selectByMouse: true
            }
    }
}

