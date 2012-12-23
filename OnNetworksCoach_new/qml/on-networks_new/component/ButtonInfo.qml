import QtQuick 2.0

Item {
    id: btnRect

    property string btnName: ""  //给btn命令
    property string normal: "../images/button_normal.png"
    property string hover: "../images/button_pressed.png"
    property string clicked: "../images/button_pressed.png"
    property string bold: "false"
    signal click();

    width: 120; height: 30

    Image {
        id: btnImage
        anchors.fill: btnRect
        fillMode: Image.PreserveAspectFit
        smooth: true
        source: normal
    }

    Text {
        id: btnText
        text: btnName
        font { family: "Helvetica"; pointSize: 15; bold: false}
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: btnImage.source = hover, btnImage.opacity = 0.6
        onExited: btnImage.source = normal, btnImage.opacity = 1
        onClicked: {
            click()
            bold = true
            btnImage.source = clicked
            btnImage.opacity = 1
        }
    }
}
