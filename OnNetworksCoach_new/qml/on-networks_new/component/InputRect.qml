import QtQuick 1.0

Rectangle {
    id: inputRect
    property string textContent: ""

    width: 140; height: 20
    clip: true
    border.width: 1; border.color: "black"
    TextInput {
        id: textInput
        width: 100; height: 20
        text: textContent
        font.family: "Helvetica"; font.pointSize: 10        
        cursorPosition: 1
        selectByMouse: true
        color: "black"
    }
}

