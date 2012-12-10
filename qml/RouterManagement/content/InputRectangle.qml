import QtQuick 2.0

Rectangle {
    id: inputRect

    property string borderColor: "white"
    property string rectRadius: "0"

    width: 200; height: 22
    radius: rectRadius
    border.color: borderColor
    color: "white"

    TextInput {
        id: textInput
        cursorPosition: 1
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onEntered: rectRadius = "5"
        onExited: rectRadius = "0", borderColor = "white"
        onClicked: borderColor = "black"
    }

}
