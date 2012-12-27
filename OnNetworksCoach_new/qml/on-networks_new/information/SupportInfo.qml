import QtQuick 1.0
import "../component"

Rectangle {
    id: container
    width: mainWindow.width - categoryButtons.width; height: mainWindow.height - categoryButtons.y
    anchors.left: categoryButtons.right
    color: "#deeade"

    Column {
        spacing: 15; anchors.centerIn: parent
        TextInfo { id: text0; textInfo: "WebSite: http://www.on-networks.com/"; font.bold: true }
        TextInfo { id: text1; textInfo: "Tel: 123456"; font.bold: true }
        TextInfo { id: text2; textInfo: "Email: example@onnetworks.com"; font.bold: true }
        TextInfo { id: text3; textInfo: "Address: xxxxxx"; font.bold: true }

    }
}
