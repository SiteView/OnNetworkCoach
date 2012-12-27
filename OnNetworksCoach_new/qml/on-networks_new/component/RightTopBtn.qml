import QtQuick 1.0
import "../images"

Item {
    id: container

    property string rectWidth: ""
    property string rectHeight: ""
    property string normalImage: ""
    property string hoverImage: ""
    property string downImage: ""
    property string btnImage: ""

    signal clicked();

    width: rectWidth; height: rectHeight

    Image {
        id: image; source: btnImage
    }
    MouseArea {
        id: mouseArea

        anchors.fill: parent
        hoverEnabled: true
        onEntered: btnImage = hoverImage
        onExited: btnImage = normalImage
        onClicked: { container.clicked(), btnImage = downImage }
    }
}
