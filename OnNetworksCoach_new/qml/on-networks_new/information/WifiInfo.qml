import QtQuick 2.0

BorderImage {
    id: name
    source: "images/rightimage.png"
    width: 600; height: 350
    border.left: 5; border.top: 5
    border.right: 5; border.bottom: 5

    Text {
        anchors.centerIn: parent
        text: "wifi"
    }
}
