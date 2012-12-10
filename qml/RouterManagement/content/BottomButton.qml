import QtQuick 2.0

Item {
    id: container
    width: 100
    height: 100

    property string imageSource: ""
    property string imageSourceEnter: ""
    property string imageSourceExit: ""
    property string imageSourceSelect: ""
    property string buttonTitle: ""

    signal clicked()

    Image {
        smooth: true
        source: imageSource
    }
    Image {
        id: buttonImage
        smooth: true
        source: imageSource
    }

    Text {
        id: title
        x:0; y: 65
        font.family: "Times New Roman"
        font.pointSize: 10
        font.bold: true
        color: "white"
        smooth: true
        text: buttonTitle
    }

    MouseArea {
        id: mainButtonMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: container.clicked(), buttonImage.source = imageSourceSelect
        onEntered: buttonImage.source = imageSourceEnter
        onExited: buttonImage.source = imageSourceExit
    }
}



