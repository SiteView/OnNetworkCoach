import QtQuick 1.0

Item {
    id: inputRect

    width: 140; height: 20
    property string textContent: ""

    Rectangle {
        id: rect

        anchors.fill: parent
        clip: true
        //color: "lightblue"

        border.width: 1; border.color: "black"

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: rect.border.color = "red"
            onExited: rect.border.color = "black"
        }
    }

    TextInput {
        id: textInput

        width: 140; height: 18
        text: textContent
        /*font.family: "newman";*/ font.pixelSize: 20
                                   cursorPosition: 2
        selectByMouse: true
        color: "black"

        anchors.verticalCenter: parent.verticalCenter

    }
}



