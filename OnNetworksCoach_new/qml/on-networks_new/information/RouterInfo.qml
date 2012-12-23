import QtQuick 2.0
import "../component"

Item {
    id: container

    width: mainWindow.width - categoryButtons.width; height: mainWindow.height - categoryButtons.y
    anchors.left: categoryButtons.right
    visible: color2 == "green" ? true : false

    Column {
        spacing: 15; x: 10
        TextInfo { id: text0; textInfo: "Static Router"; color: "green" }
        Row {
            id: buttons; spacing: 10
            ButtonInfo { id: add; btnName: "Add" }
            ButtonInfo { id: edit; btnName: "Edit" }
            ButtonInfo { id: delete0; btnName: "Delete" }
        }
        Rectangle {
            id: infomation
            width: container.width; height: 200
            color: "lightblue"
        }
        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
        TextInfo { id: text1; textInfo: "Router Information"; font.bold: true; color: "green" }
        TextInfo { id: text2; textInfo: "Hardware Version" }
        TextInfo { id: text3; textInfo: "Firame Version" }
        TextInfo { id: text4; textInfo: "GUI Language Version" }

        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }

        TextInfo { id: text5; textInfo: "Lan Port"; font.bold: true; color: "green" }
        TextInfo { id: text6; textInfo: "Mac Address" }
        TextInfo { id: text7; textInfo: "Ip Address" }
        TextInfo { id: text8; textInfo: "DHCP Address" }

        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
    }
}








