import QtQuick 2.0

Item {
    id: helpAndQuitBtn

    width: 30; height: 28

    property string normalImage: ""
    property string hoverImage: ""
    property string selectedImage: ""
    property string changeImage: ""

    signal clicked()

    Image {
        id: btnImage

        source: changeImage
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onEntered: changeImage = hoverImage
        onExited: changeImage = normalImage
        onClicked: helpAndQuitBtn.clicked(), changeImage = selectedImage
    }
}
