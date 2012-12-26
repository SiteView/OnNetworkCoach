import QtQuick 2.0
import "../component"

Rectangle {
    id: container

    width: mainWindow.width - categoryButtons.width; height: mainWindow.height - categoryButtons.y
    anchors.left: categoryButtons.right
    visible: color2 == "green" ? true : false
    color: "#deeade"

    Column {
        spacing: 10; x: 10
        Column {
            id: position0; spacing: 10
            TextInfo { id: text1; textInfo: "Router Information"; font.bold: true; color: "green" }
            TextInfo { id: text2; textInfo: "Hardware Version" }
            TextInfo { id: text3; textInfo: "Firame Version" }
            TextInfo { id: text4; textInfo: "GUI Language Version" }
        }

        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
        TextInfo { id: text5; textInfo: "Lan Port"; font.bold: true; color: "green" }
        Column {
            id: position1; spacing: 10
            TextInfo { id: text6; textInfo: "Mac Address" }
            TextInfo { id: text7; textInfo: "Ip Address" }
            TextInfo { id: text8; textInfo: "DHCP Address" }
        }

        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
    }
    Column {
        spacing: 10; x: container.width - 140 - 20; y: position1.y - 5
        InputRect { id: inputRect0 }
        InputRect { id: inputRect1 }
        InputRect { id: inputRect2 }
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








