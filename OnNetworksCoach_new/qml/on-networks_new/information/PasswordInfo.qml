import QtQuick 2.0
import "../component"

Item {
    id: container

    width: mainWindow.width - categoryButtons.width; height: mainWindow.height - categoryButtons.y
    anchors.left: categoryButtons.right
    visible: color2 == "green" ? true : false

    Column {
        spacing: 15; x: 10
        TextInfo { id: text0; textInfo: "Password Settings"; color: "green" }
        //two buttons
        Row {
            id: buttons; spacing: 10
            ButtonInfo { id: apply; btnName: "Apply" }
            ButtonInfo { id: cancel; btnName: "Cancel" }
        }
        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
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
}







