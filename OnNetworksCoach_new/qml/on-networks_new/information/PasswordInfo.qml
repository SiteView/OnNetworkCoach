import QtQuick 1.0
import "../component"

Rectangle {
    id: container

    width: mainWindow.width - categoryButtons.width; height: mainWindow.height - categoryButtons.y
    anchors.left: categoryButtons.right
    color: "#deeade"
    visible: color2 == "green" ? true : false

    Column {
        spacing: 15; x: 10       
        TextInfo { id: text1; textInfo: "Set Wireless Password"; font.bold: true }
        Column {
            spacing: 15
            Row {
                spacing: 15
                TextInfo { id: text2; textInfo: "New Password:      " }
                InputRect { id: input0 }
            }
            Row {
                spacing: 15
                TextInfo { id: text3; textInfo: "Password Again:    " }
                InputRect { id: input1 }
            }
        }
        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
        TextInfo { id: text4; textInfo: "Set Router Password"; font.bold: true }
        Row {
            TextInfo { id: text5; textInfo: "Original:                     " }
            InputRect { id: input2 }
        }
        Row {
            TextInfo { id: text6; textInfo: "New Password:         " }
            InputRect { id: input3 }
        }

        Row {
            TextInfo { id: text7; textInfo: "Password Again:       " }
            InputRect { id: input4 }
        }
        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }

    }
    Column {
        id: fixPart; spacing: 15
        anchors { right: container.right; rightMargin: 10; bottom: container.bottom; bottomMargin: 10 }
        //two buttons
        Row {
            id: buttons3; spacing: 10
            ButtonInfo { id: apply3; btnName: "Apply" }
            ButtonInfo { id: cance3; btnName: "Cancel" }
        }
    }
}







